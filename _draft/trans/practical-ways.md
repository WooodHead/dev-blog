
Practical Ways to Write Better JavaScript
In our 2019 Dev Survey, we asked what kind of content Stack Overflow users would like to see beyond questions and answers. The most popular response was “tech articles written by other developers.” So from now on we’ll be regularly publishing articles from contributors. If you have an idea and would like to submit a pitch, you can email pitches@stackoverflow.com.

Hey there, I’m Ryland Goldstein, a product guy working on Reshuffle over at Binaris. This is my second piece for Stack Overflow. Let’s dig in! 

I don’t see enough people talking about practical ways to improve at JavaScript. Here are some of the top methods I use to write better JS.
Use TypeScript
The number one thing you can do to improve your JS is by not writing JS. For the uninitiated, TypeScript (TS) is a “compiled” superset of JS (anything that runs in JS runs in TS). TS adds a comprehensive optional typing system on top of the vanilla JS experience. For a long time, TS support across the ecosystem was inconsistent enough for me to feel uncomfortable recommending it. Thankfully, those days are long behind us and most frameworks support TS out of the box. Now that we’re all on the same page about what TS is, let’s talk about why you would want to use it.

TypeScript enforces type safety
Type safety describes a process where a compiler verifies that all types are being used in a legal way throughout a piece of code. In other words, if you create a function foo that takes a number:
function foo(someNum: number): number {
  return someNum + 5;
}
That foo function should only ever be called with a number:
good
console.log(foo(2)); // prints "7"
no good
console.log(foo("two")); // invalid TS code
Aside from the overhead of adding types to your code, there are zero downsides to type-safety enforcement. The benefit on the other hand, is too large to ignore. Type safety provides an extra level of protection against common errors/bugs, which is a blessing for a lawless language like JS.
Typescript types make refactoring larger applications possible
Refactoring a large JS application can be a true nightmare. Most of the pain of refactoring JS is due to the fact that it doesn’t enforce function signatures. This means a JS function can never really be misused. For example, if I have a function myAPI that is used by 1000 different services:
function myAPI(someNum, someString) {
  if (someNum > 0) {
    leakCredentials();
  } else {
    console.log(someString);
  }
}
and I change the call signature a bit:
function myAPI(someString, someNum) {
  if (someNum > 0) {
    leakCredentials();
  } else {
    console.log(someString);
  }
}
I have to be 100% certain, that every place where this function is used (thousands of places), I correctly update the usage. If I even miss one my credentials could leak. Here’s the same scenario with TS:
before
function myAPITS(someNum: number, someString: string) { ... }
after
function myAPITS(someString: string, someNum: number) { ... }
As you can see, the myAPITS function went through the same change as the JavaScript counterpart. But instead of resulting in valid JavaScript, this code results in invalid TypeScript, as the thousands of places it’s used are now providing the wrong types. And because of the type safety we discussed earlier, those thousand cases will block compilation and your credentials won’t get leaked (that’s always nice).

TypeScript makes team architecture communication easier
When TS is setup correctly, it will be difficult to write code without first defining your interfaces and classes. This provides a way to share concise, communicative architecture proposals. Before TS, other solutions to this problem existed, but none solved it natively without making you do extra work. For example, if I want to propose a new Request type for my backend, I can send the following to a teammate using TS.
interface BasicRequest {
  body: Buffer;
  headers: { [header: string]: string | string[] | undefined; };
  secret: Shhh;
}
I already had to write the code, but now I can share my incremental progress and get feedback without investing more time. I don’t know if TS is inherently less bug-prone than JS. I do strongly believe that forcing developers to define interfaces and APIs first results in better code. Overall, TS has evolved into a mature and more predictable alternative to vanilla JS. Developers definitely still need to be comfortable with vanilla JS, but most new projects I start these days are TS from the outset.

Use Modern Features
JavaScript is one of the most popular (if not the most) programming languages in the world. You might expect that a 20+ year old language used by hundreds of millions of people would be mostly figured out by now, but the opposite is actually true. In recent times, many changes and additions have been made to JS (yes I know, technically ECMAScript), fundamentally morphing the developer experience. As someone who only started writing JS in the last two years, I had the advantage of coming in without bias or expectations. This resulted in much more pragmatic choices about what features of the language to utilize and which to avoid.

async and await
For a long time, asynchronous, event-driven callbacks were a unavoidable part of JS development:
traditional callback
makeHttpRequest('google.com', function (err, result) {
  if (err) {
    console.log('Oh boy, an error');
  } else {
    console.log(result);
  }
});
I’m not going to spend time explaining why the above is problematic (but I have before). To solve the issue with callbacks, a new concept—Promises—were added to JS. Promises allow you to write asynchronous logic while avoiding the nesting issues that previously plagued callback-based code.
Promises
makeHttpRequest('google.com').then(function (result) {
  console.log(result);
}).catch(function (err) {
  console.log('Oh boy, an error');
});
The biggest advantage of Promises over callbacks is readability and chainability. While Promises are great, they still left something to be desired. For many, the Promise experience was still too reminiscent of callbacks. Specifically, developers were asking for an alternative to the Promise model. To remedy this, the ECMAScript committee decided to add a new method of utilizing promises, async and await:
async and await
try {
  const result = await makeHttpRequest('google.com');
  console.log(result);
} catch (err) {
  console.log('Oh boy, an error');
}
The one caveat being, anything you await must have been declared async:
required definition of makeHttpRequest in prev example
async function makeHttpRequest(url) {
  // ...
}
It’s also possible to await a Promise directly since an async function is really just a fancy Promise wrapper. This also means the async/await code and the Promise code are functionally equivalent. So feel free to use async/await without feeling guilty.

let and const

For most of JS’s existence, there was only one variable scope qualifier: var. var has some pretty unique/interesting rules in regards to how it handles scope. The scoping behavior of var is inconsistent and confusing and has resulted in unexpected behavior and therefore bugs throughout the lifetime of JS. But as of ES6, there is an alternative to var: const and let. There is practically zero need to use var anymore, so don’t. Any logic that uses var can always be converted to equivalent const and let based code. As for when to use const vs let, I always start by declaring everything const. const is far more restrictive and “immutablish,” which usually results in better code. There aren’t a ton of “real scenarios” where using let is necessary, I would say 1/20 variables I declare with let. The rest are all const. I said const is “immutablish” because it does not work in the same way as const in C/C++. What const means to the JavaScript runtime is that the reference to that const variable will never change. This does not mean the contents stored at that reference will never change. For primitive types (number, boolean, etc.), const does translate to immutability (because it’s a single memory address). But for all objects (classes, arrays, dicts), const does not guarantee immutability.


Arrow => Functions

Arrow functions are a concise method of declaring anonymous functions in JS. Anonymous functions describe functions that aren’t explicitly named. Usually, anonymous functions are passed as a callback or event hook.
vanilla anonymous function
someMethod(1, function () { // has no name
  console.log('called');
});
For the most part, there isn’t anything “wrong” with this style. Vanilla anonymous functions behave “interestingly” in regards to scope, which can/has resulted in many unexpected bugs. We don’t have to worry about that anymore thanks to arrow functions. Here is the same code implemented with an arrow function:
anonymous arrow function
someMethod(1, () => { // has no name
  console.log('called');
});
Aside from being far more concise, arrow functions have much more practical scoping behavior. Arrow functions inherit this from the scope they were defined in.
In some cases, arrow functions can be even more concise:
const added = [0, 1, 2, 3, 4].map((item) => item + 1);
console.log(added) // prints "[1, 2, 3, 4, 5]"
Arrow functions that reside on a single line include a implicit return statement. There is no need for brackets or semi-colons with single line arrow functions.
I want to make it clear. This isn’t a var situation; there are still valid use cases for vanilla anonymous functions (specifically class methods). That being said, I’ve found that if you always default to an arrow function, you end up doing a lot less debugging as opposed to defaulting to vanilla anonymous functions.
As usual, the Mozilla docs are the best resource


Spread Operator ...

Extracting key/value pairs of one object and adding them as children of another object is a very common scenario. Historically, there have been a few ways to accomplish this, but all of those methods are pretty clunky:
const obj1 = { dog: 'woof' };
const obj2 = { cat: 'meow' };
const merged = Object.assign({}, obj1, obj2);
console.log(merged) // prints { dog: 'woof', cat: 'meow' }
This pattern is incredibly common, so the above approach quickly becomes tedious. Thanks to the spread operator, there’s never a need to use it again:
const obj1 = { dog: 'woof' };
const obj2 = { cat: 'meow' };
console.log({ ...obj1, ...obj2 }); // prints { dog: 'woof', cat: 'meow' }
The great part is, this also works seamlessly with arrays:
const arr1 = [1, 2];
const arr2 = [3, 4];
console.log([ ...arr1, ...arr2 ]); // prints [1, 2, 3, 4]
It’s probably not the most important recent JS feature, but it’s one of my favorites.


Template Literals (Template Strings)
Strings are one of the most common programming constructs. This is why it’s so embarrassing that natively declaring strings is still poorly supported in many languages. For a long time, JS was in the “crappy string” family. But the addition of template literals put JS in a category of its own. Template literals natively and conveniently solve the two biggest problems with writing strings: adding dynamic content and writing strings that bridge multiple lines:
const name = 'Ryland';
const helloString =
`Hello
 ${name}`;
I think the code speaks for itself. What an amazing implementation.


Object Destructuring

Object destructuring is a way to extract values from a data collection (object, array, etc.), without having to iterate over the data or access its keys explicitly:
old way
function animalParty(dogSound, catSound) {}

const myDict = {
  dog: 'woof',
  cat: 'meow',
};

animalParty(myDict.dog, myDict.cat);
destructuring
function animalParty(dogSound, catSound) {}

const myDict = {
  dog: 'woof',
  cat: 'meow',
};

const { dog, cat } = myDict;
animalParty(dog, cat);
But wait, there’s more. You can also define destructuring in the signature of a function:
destructuring 2
function animalParty({ dog, cat }) {}

const myDict = {
  dog: 'woof',
  cat: 'meow',
};

animalParty(myDict);
It also works with arrays:
destructuring 3
[a, b] = [10, 20];

console.log(a); // prints 10
There are a ton of other modern features you should be utilizing. Here are a handful of others that stand out to me:
Always Assume Your System is Distributed
When writing parallelized applications your goal is to optimize the amount of work you’re doing at one time. If you have four available cores and your code can only utilize a single core, 75% of your potential is being wasted. This means blocking, synchronous operations are the ultimate enemy of parallel computing. But considering that JS is a single threaded language, things don’t run on multiple cores. So what’s the point?

JS is single threaded, but not single-file (as in lines at school). Even though it isn’t parallel, it’s still concurrent. Sending an HTTP request may take seconds or even minutes, so if JS stopped executing code until a response came back from the request, the language would be unusable.

JavaScript solves this with an event loop. The event loop loops through registered events and executes them based on internal scheduling/prioritization logic. This is what enables sending thousands of simultaneous HTTP requests or reading multiple files from disk at the same time. Here’s the catch: JavaScript can only utilize this capability if you utilize the correct features. The most simple example is the for-loop:
let sum = 0;
const myArray = [1, 2, 3, 4, 5, ... 99, 100];
for (let i = 0; i < myArray.length; i += 1) {
  sum += myArray[i];
}
A vanilla for-loop is one of the least parallel constructs that exists in programming. At my last job, I led a team that spent months attempting to convert traditional R lang for-loops into automagically parallel code. It’s basically an impossible problem, only solvable by waiting for deep learning to improve. The difficulty of parallelizing a for-loop stems from a few problematic patterns. Sequential for-loops are very rare, but they alone make it impossible to guarantee a for-loops decomposability:
let runningTotal = 0;
for (let i = 0; i < myArray.length; i += 1) {
  if (i === 50 && runningTotal > 50) {
    runningTotal = 0;
  }
  runningTotal += Math.random() + runningTotal;
}
This code only produces the intended result if it is executed in order, iteration by iteration. If you tried to execute multiple iterations at once, the processor might incorrectly branch based on inaccurate values, which invalidates the result. We would be having a different conversation if this was C code, as the usage is different and there are quite a few tricks the compiler can do with loops. In JavaScript, traditional for-loops should only be used if absolutely necessary. Otherwise, utilize the following constructs: 

map
// in decreasing relevancy :0
const urls = ['google.com', 'yahoo.com', 'aol.com', 'netscape.com'];
const resultingPromises = urls.map((url) => makHttpRequest(url));
const results = await Promise.all(resultingPromises);
map with index
// in decreasing relevancy :0
const urls = ['google.com', 'yahoo.com', 'aol.com', 'netscape.com'];
const resultingPromises = urls.map((url, index) => makHttpRequest(url, index));
const results = await Promise.all(resultingPromises);
for-each
const urls = ['google.com', 'yahoo.com', 'aol.com', 'netscape.com'];
// note this is non blocking
urls.forEach(async (url) => {
  try {
    await makHttpRequest(url);
  } catch (err) {
    console.log(`${err} bad practice`);
  }
});
I’ll explain why these are an improvement over traditional for-loops. Instead of executing each iteration in order (sequentially), constructs such as map take all of the elements and submit them as individual events to the user-defined map function. For the most part, individual iterations have no inherent connection or dependence to each other, allowing them to run concurrently. This isn’t to say that you couldn’t accomplish the same thing with for-loops. In fact, it would look something like this:
const items = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];

async function testCall() {
  // do async stuff here
}

for (let i = 0; i < 10; i += 1) {
  testCall();
}
As you can see, the for-loop doesn’t prevent me from doing it the right way, but it sure doesn’t make it any easier either. Compare to the map version:
const items = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
items.map(async (item) => {
 // do async stuff here
});
As you can see, the map just works. The advantage of the map becomes even more clear if you want to block until all of the individual async operations are done. With the for-loop code, you would need to manage an array yourself. Here’s the map version:
const items = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9];
 const allResults = await Promise.all(items.map(async (item) => {
  // do async stuff here
 }));
it's really that easy
There are many cases where a for-loop would be just as performant (or maybe more) in comparison to a map or forEach. I would still argue that losing a few cycles now is worth the advantage of using a well defined API. That way, any future improvements to that data access patterns implementation will benefit your code. The for-loop is too generic to have meaningful optimizations for that same pattern.

There are a other valid async options outside of map and forEach, such as for-await-of.
Lint Your Code and Enforce a Style
Code without a consistent style (look and feel) is incredibly difficult to read and understand. Therefore, a critical aspect of writing high-end code in any language is having a consistent and sensible style. Due to the breadth of the JS ecosystem, there are a LOT of options for linters and style specifics. What I can’t stress enough is that it’s far more important that you are using a linter and enforcing a style (any of them) than it is which linter/style you specifically choose. At the end of the day, no one is going to write code exactly how I would, so optimizing for that is an unrealistic goal.

I see a lot of people ask whether they should use eslint or prettier. For me, they serve very different purposes and therefore should be used in conjunction. Eslint is a traditional linter most of the time. It’s going to identify issues with your code that have less to do with style and more to do with correctness. For example, I use eslint with AirBNB rules. With that configuration, the following code would force the linter to fail:
var fooVar = 3; // airbnb rules forebid "var"
It should be pretty obvious how eslint adds value to your development cycle. In essence, it makes sure you follow the rules about what is and isn’t good practice. Due to this, linters are inherently opinionated. As with all opinions, take it with a grain of salt. The linter can be wrong.

Prettier is a code formatter. It is less concerned with correctness and far more worried about uniformity and consistency. Prettier isn’t going to complain about using var, but it will automatically align all the brackets in your code. In my personal development process, I always run prettier as the last step before pushing code to Git. In many cases, it even makes sense to have Prettier run automatically on each commit to a repo. This ensures that all code coming into source control has consistent style and structure.

Test Your Code
Writing tests is an indirect but incredibly effective method of improving the JS code you write. I recommend becoming comfortable with a wide array of testing tools. Your testing needs will vary, and there’s no single tool that can handle everything. There are tons of well established testing tools in the JS ecosystem, so choosing tools mostly comes down to personal taste. As always, think for yourself.


Test Driver – Ava
AvaJS on Github
Test drivers are simply frameworks that give structure and utilities at a very high level. They are often used in conjunction with other specific testing tools, which vary based on your testing needs.

Ava is the right balance of expressiveness and conciseness. Ava’s parallel, and isolated architecture is the source of most of my love. Tests that run faster save developers time and companies money. Ava boasts a ton of nice features, such as built-in assertions, while managing to stay very minimal.

Alternatives: Jest, Mocha, Jasmine


Spies and Stubs – Sinon
Sinon on Github
Spies give us function analytics, such as how many times a function was called, what they were called by, and other insightful data.

Sinon is a library that does a lot of things, but only a few super well. Specifically, sinon excels when it comes to spies and stubs. The feature set is rich but the syntax is concise. This is especially important for stubs, considering they partially exist to save space.

Alternatives: testdouble


Mocks – Nock
Nock on Github

HTTP mocking is the process of faking some part of the http request process so the tester can inject custom logic to simulate server behavior.

Http mocking can be a real pain, but nock makes it less painful. Nock directly overrides the request built-in of nodejs and intercepts outgoing http requests. This in turn gives you complete control of the response.

Alternatives: I don’t really know of any


Web Automation – Selenium
Selenium on Github

I have mixed emotions about recommending Selenium. As it’s the most popular option for web automation, it has a massive community and online resource set. Unfortunately, the learning curve is pretty steep, and it depends on a lot of external libraries for real use. That being said, it’s the only real free option, so unless you’re doing some enterprise grade web-automation, Selenium will do the job.

Alternatives: Cypress, PhantomJS

The Never Ending Journey
As with most things, writing better JavaScript is a continuous process. Code can always be cleaner, new features are added all the time, and there’s never enough tests. It may seem overwhelming, but because there are so many potential aspects to improve, you can really progress at your own pace. Take things one step at a time, and before you know it, you’ll be a JavaScript ace.

This blog post originally appeared on Ryland’s personal website and on Dev.to. You can find more of his writing on both sites. If you would like to contribute articles to the Stack Overflow blog, send an email to pitches@stackoverflow.com.
