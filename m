Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4UJQGEAMGQEM725SJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x338.google.com (mail-wm1-x338.google.com [IPv6:2a00:1450:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CC4F3D7C55
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 19:40:03 +0200 (CEST)
Received: by mail-wm1-x338.google.com with SMTP id k4-20020a05600c1c84b0290210c73f067asf1157410wms.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Jul 2021 10:40:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627407602; cv=pass;
        d=google.com; s=arc-20160816;
        b=gtFllcmx8/IOfEZf06cqaYrDhvNfqbdz7L9yxNX1vu68Hx3+EyQDn1zeIJO7VhOkoE
         4DX+7fbPkXg3JwNAlfnw2x4sGM9lNpg6K3Oj0egFSmpkuWgV1cIIeC2uUVFKFaUXPIZ6
         2g22mSSNofVmBKthFcXOkklqtiUGwyongUJ1xUg9DofUHpabMOFP1hbZoRlheqeFwTBp
         XbxLwAljIELqdZJM6LzRFc+n9d77vH0aY5lAuZWelujoZ2gitsx9y8xJr/Ztc8z0HDPF
         kkq3UndOnaS4oE0V8wNywxrQh5WsD2z9+5M8bBlL/963p+rsC8iuWFvtwMRzf0Jvai9c
         gYDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=2RCysWpa+uSuhADvou47bInkUZVvWWmYawZqgrL8Vbo=;
        b=pVl3JRuvcoODrkUEw2Mv61Ipt0ekc5NJWnkjxpnY1+7PfX1Jnq00Hun2rrmVh2LHI6
         KWPP+bVES/xGfYs+MMziqjD70yWL4ppXqyOU3qMzpmg3SYP4jAsdqDLvtvtJt8Ty98of
         +mNRH7c9KEbALhkvTcJ+5T3/TnmH3OYrfb8bmxkqtopQZGoRL0Fgqj3F/E0f7A/xrpGh
         6N75rR6C8cdSynrE6rGzy8jBr9V8HhdGiU6PfHIc6teymSmOZt8bMBcw/kzo2mkPrUGT
         L5hzAtcymxiP3CPl8jWJo8/xO/0zseNv+Re7eFqWegJa5r33C68LyhS9hpm5h14hU67N
         LrIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KG8X/0Pd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2RCysWpa+uSuhADvou47bInkUZVvWWmYawZqgrL8Vbo=;
        b=O9ptjgmAY7CG7mxbKW+H2OJOTDDoyo2NT0L4fIphHu3ezyXXyVktdoCE2+i+6Gklgm
         JkChE/VZOXyQeTQNuT73uHbgDsEiaDdIhqS/+e3OI1fAKnC6HQqczlifgLNgK23XSyN3
         7xrNfZhjafN83xij8J5Ym+ZF808I1rDuB04GNyI8fGxN4qPkp23G4L6u8KthTCBQtr4N
         olx/XKwfRjlnmP/HtSQhKo93/3b6fM/h1zwaSrCAnNbvAz8wQi5OCAOPAjMzUhyWdDw9
         CoRyYMtSdKcxcfA5RAJNlDRUtztMImHqZaIdyin4W5hctFHjVT8ujGTtfVr7psPECnyi
         3A2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2RCysWpa+uSuhADvou47bInkUZVvWWmYawZqgrL8Vbo=;
        b=gfJnOSfjWTNj2Vf+xHsapPqA54WZw0wCAt4OHxUQ1H774rCBsTOYNnxrcfaYXSrt5z
         YsY/G4i5ZJL+Jdmb1vSJocstC3AEG5/E4NytGS9K7VpGweWcK5kQIvzMU0kSQTmua1KD
         bZK6Xcy0ukMCzOB5uQmfhO7OKu+ctUeXzTynzewyj+l/Ac8RHLJmgXUGXkVopTWMY6wV
         cNZLunm+J1l3DM1kukgOS317odWFlHVX3TsO310HWhtO71D+Vcs1LdzzgW3v6cudC3uZ
         swOOKC2LVDFagVuedBGE7pncAcolF7rE7MWH29Ot6+7kL3eOYRhY+yn4zDiMNzKdIhsR
         z/5A==
X-Gm-Message-State: AOAM532BhMYt1e+NGqJNrwDp779OOMK6DkLYW6OXTvIcDdQJ40jie/Ep
	r2rEAhN8gZKqBF/tA3CPCH8=
X-Google-Smtp-Source: ABdhPJz4eQsMyCjXSbw89dL67TYTASaSyVUxOfaONsOQUDwzGdhA50O2RxYrBS0r8jVioEHlQkjqvQ==
X-Received: by 2002:a1c:4d06:: with SMTP id o6mr23595596wmh.55.1627407602680;
        Tue, 27 Jul 2021 10:40:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1c06:: with SMTP id j6ls1877813wms.3.canary-gmail;
 Tue, 27 Jul 2021 10:40:01 -0700 (PDT)
X-Received: by 2002:a05:600c:cc:: with SMTP id u12mr7243282wmm.63.1627407601717;
        Tue, 27 Jul 2021 10:40:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627407601; cv=none;
        d=google.com; s=arc-20160816;
        b=bukcOjDkE9UXleK/+Hqt9S7AG/u6z0HLPNye9UfFNTRDxdT8j8j9p/Pk+wvly0w0XF
         v6OuLU8uzK+/xJkZJORbez8/UjHswRMnzP/YkiHqzvAXna+vd/E5UHsUjYJswq945EG7
         KFa3s4SEY+ezRF1TQreF82hZNNVFMKBObB2WdoyMWQrof5H1vHm1xzerCPWU0QIWlzfM
         iY4WPjnT32TwzMnd3X1yahcIEog4bSps9LqqB+34PH1h0pmga1JUkXgaS3Z/ZJCv6atA
         pqTz3n2yQFFDlsZCM4LkI06mzwV4m3Dq6Ne9SJ3TxtMLiqTy/A6N7m9mDvKE3ATMaf0f
         LmOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=45mTCumBg2TxGQr2T3T4Elx7M9ijHLu+/MJFsdG0uTc=;
        b=Qj6VqxXU++bGouEBn5iIcicIe5XkvrwKAs9tPph24z75OQPwQCTUv1C0Y37jwBqW6C
         pVMexNI8eyhQvcsko8JBr9Hz1alS8ojBGZl21Bk63JBt8Wv1rKr6Pk6nb4YdUXH8TDF7
         nfiFoTc33MnH+wb+FiBuByiTN1XujFYkVJ9SpT47pngsh7q7CjRWWi0Oefslj/Iu2edA
         nEEejpEAC0mUSBTBHpvaut4nE/YBzdygvOBFev0IuGGt1E9oX1l8ds2m2sbKhAe7ykNR
         uxXBl2BoaRnuetx2wnkARZfaMH6qmosEgTwuErQ4OTxHDlGfv2y/ocZ+P4vvfALBQv1g
         LxYw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KG8X/0Pd";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id c26si148902wml.0.2021.07.27.10.40.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jul 2021 10:40:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id r17so23053085lfe.2
        for <clang-built-linux@googlegroups.com>; Tue, 27 Jul 2021 10:40:01 -0700 (PDT)
X-Received: by 2002:ac2:59db:: with SMTP id x27mr17279297lfn.547.1627407600815;
 Tue, 27 Jul 2021 10:40:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210714091747.2814370-1-morbo@google.com> <20210726201924.3202278-1-morbo@google.com>
 <20210726201924.3202278-2-morbo@google.com> <c965006c-88e1-3265-eb9c-76dc0bbcb733@kernel.org>
 <YP+ZOx8BETgufxBS@kroah.com> <CAGG=3QX68umw5Ws9_HuGkqoTNT=Q1+QB7YpSaqw3R_kPsbxwsg@mail.gmail.com>
 <YP+ql3QFYnefR/Cf@kroah.com>
In-Reply-To: <YP+ql3QFYnefR/Cf@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 27 Jul 2021 10:39:49 -0700
Message-ID: <CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ=EqRy9Nh0rZOPg@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] base: mark 'no_warn' as unused
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Bill Wendling <morbo@google.com>
Cc: Nathan Chancellor <nathan@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="KG8X/0Pd";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::134
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

On Mon, Jul 26, 2021 at 11:41 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> On Mon, Jul 26, 2021 at 11:15:52PM -0700, Bill Wendling wrote:
> > On Mon, Jul 26, 2021 at 10:27 PM Greg Kroah-Hartman
> > <gregkh@linuxfoundation.org> wrote:
> > > On Mon, Jul 26, 2021 at 01:47:33PM -0700, Nathan Chancellor wrote:
> > > > + Greg and Rafael as the maintainer and reviewer of drivers/base/module.c
> > > > respectively, drop everyone else.
> > >
> > > Odd no one cc:ed us originally, I guess they didn't want the patch ever
> > > merged?  :(

Bill,
$ wget https://lore.kernel.org/lkml/20210726201924.3202278-2-morbo@google.com/raw
-O bill.patch
$ ./scripts/get_maintainer.pl bill.patch
Greg Kroah-Hartman <gregkh@linuxfoundation.org> (supporter:DRIVER
CORE, KOBJECTS, DEBUGFS AND SYSFS)
"Rafael J. Wysocki" <rafael@kernel.org> (reviewer:DRIVER CORE,
KOBJECTS, DEBUGFS AND SYSFS)
Nathan Chancellor <nathan@kernel.org> (supporter:CLANG/LLVM BUILD SUPPORT)
Nick Desaulniers <ndesaulniers@google.com> (supporter:CLANG/LLVM BUILD SUPPORT)
linux-kernel@vger.kernel.org (open list)
clang-built-linux@googlegroups.com (open list:CLANG/LLVM BUILD SUPPORT)

You can use something like this shell function for small patches:

$ which kpatch
kpatch () {
        patch=$1
        shift
        if [[ -d $patch ]]
        then
                echo "Directory given"
        else
                git send-email --cc-cmd="./scripts/get_maintainer.pl
--norolestats $patch" $@ $patch
        fi
}
$ kpatch bill.patch --to "Greg Kroah-Hartman
<gregkh@linuxfoundation.org>" --to "Rafael J. Wysocki
<rafael@kernel.org>"

(I recommend always putting the maintainers or people you'd expect to
pick up the patches in To:.)

> > >
> > > >
> > > > Original post:
> > > >
> > > > https://lore.kernel.org/r/20210726201924.3202278-2-morbo@google.com/
> > > >
> > > > On 7/26/2021 1:19 PM, 'Bill Wendling' via Clang Built Linux wrote:
> > > > > Fix the following build warning:
> > > > >
> > > > >    drivers/base/module.c:36:6: error: variable 'no_warn' set but not used [-Werror,-Wunused-but-set-variable]
> > > > >          int no_warn;
> > >
> > > That's not going to be a good warning to ever have the kernel use due to
> > > how lots of hardware works (i.e. we need to do a read after a write but
> > > we can throw the read away as it does not matter).
> > >
> > >
> > > > >
> > > > > This variable is used to remove another warning, but causes a warning
> > > > > itself. Mark it as 'unused' to avoid that.
> > > > >
> > > > > Signed-off-by: Bill Wendling <morbo@google.com>
> > > >
> > > > Even though they evaluate to the same thing, it might be worth using
> > > > "__always_unused" here because it is :)
> > >
> > > But it is not unused, the value is written into it.
> > >
> > I believe that only matters if the variable is marked "volatile".
>
> "volatile" means nothing anymore, never use it or even think about it
> again please :)

What Greg is getting at is that the use of the volatile keyword in
variable declarations is slightly frowned on by the kernel community.
It's less flexible than making accesses volatile qualified via casts.
Then you have flexibility for some accesses to be volatile (ie. not
CSE'd), and some not (ie. CSE'd), if needed.

Though just because you assign to a variable doesn't mean that the
compiler generates an access, especially if the result is unused.
This warning is all about dead stores.  The cast to a volatile
qualified pointer then dereference is what guarantees the access.

https://godbolt.org/z/7K7369bGG

(To be explicit, IMO Greg's point about volatile stores is orthogonal
to discussions about dead stores.)

>
> > Otherwise, the variable itself is never used. A "variable that's
> > written to but not read from," in fact, is the whole reason for the
> > warning.
>
> But that is ok!  Sometimes you need to do this with hardware (like all
> PCI devices).  This is a legitimate code flow for many hardware types
> and if a C compiler thinks that this is not ok, then it is broken.
>
> So be VERY careful when changing drivers based on this warning.  Because
> of this, I do not think you can enable it over the whole kernel without
> causing major problems in some areas.
>
> But that is independent of this specific issue you are trying to patch
> here, I say this to warn you of a number of stupid places where people
> have tried to "optimize away" reads based on this compiler warning in
> drivers, and we have had to add them back because it broke
> functionality.
>
> > > So this isn't ok, sometimes we want to write to variables but never care
> > > about the value, that does not mean the compiler should complain about
> > > it.
> > >
> > Typically, if you don't care about the return value, you simply don't
> > assign it to a variable (cf. printf). However, the functions that
> > assign to "no_warn" have the "warn_unused_result" attribute. The fact
> > that the variable is named "no_warn" seems to indicate that it's meant
> > to remain unused, even if it probably should be checked.
>
> These functions have warn_unused_result set on them because for 99% of
> the time, I want the value to be checked.  But as you can see in this
> use, as per the comments in the code, we do not care about the result
> for a very good reason.  So we just assign it to a variable to make the
> compiler quiet.

I think warn_unused_result should only really be used for functions
where the return value should be used 100% of the time.  If there are
cases where it's ok to not check the return value, consider not using
warn_unused_result on function declarations.

That said, we have a very similar issue throughout LLVM that Bill
should recognize. In LLVM, we have pretty aggressive usage of
assertions.  Rather than:

assert(someReallyLongExpression && "error message");

where that statement might wrap across multiple lines, instead it
might be clearer to write:

bool IsOk = someReallyLongExpression;
assert(IsOk && "error message");

which looks nicer but now produces -Wunused-but-set-variable on IsOk
for release builds where assertions are disabled.  The common fix in
LLVM is to write:

bool IsOk = someReallyLongExpression;
assert(IsOk && "error message");
(void)IsOk;

The cast to void is technically a use that doesn't result in a dead
store.  That pattern could be used in the kernel rather than

int no_warn;
no_warn = warn_unused_result_fn();

at least to avoid -Wunused-but-set-variable.  Oh, looks like a curious
difference between compilers:
https://godbolt.org/z/GvznMM6o1
Filed https://bugs.llvm.org/show_bug.cgi?id=51228.  So I guess we
can't use the cast-to-void to avoid -Wunused-but-set-variable, since
that triggers -Wunused-result, at least with GCC.  :( Nevermind...

Though I still think the use of warn_unused_result on
sysfs_create_link() is worth revisiting.

(Orthogonally, I wonder if C would have been more ergonomic or less to
have all functions implicitly warn_unused_result then have callers be
explicit when they didn't want a result, rather than what we have
today which is the opposite.  Maybe that's a terrible idea, but
sometimes you can't tell until some volume of code has been written in
such a language.  Maybe it makes hello world less pretty, but maybe it
avoids more bugs in real code.)

>
> > Would you rather the warning be turned off on some level?
>
> Which warning?
>
> The code here, as-is, is correct.  We already have 1 compiler warning
> work around in place, do you want to add another one?  How many can we
> stack on top of each other?

Isn't -Wunused-but-set-variable enabled only for W=1 builds?

>
> And again, why did you not cc: the maintainers of this code for this
> change?  That's not good...
>
> thanks,
>
> greg k-h



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm62a7mrLZb_eciUO-HZj7m3cjgfvtQ%3DEqRy9Nh0rZOPg%40mail.gmail.com.
