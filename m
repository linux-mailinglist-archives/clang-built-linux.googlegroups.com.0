Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBVNK6LZAKGQEZHR67SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 059E51752F7
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Mar 2020 06:10:47 +0100 (CET)
Received: by mail-yw1-xc37.google.com with SMTP id b195sf16339943ywa.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 01 Mar 2020 21:10:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583125845; cv=pass;
        d=google.com; s=arc-20160816;
        b=sKFnq2b3EgVCGet0e5I6RBvfXyU+39tHfxsF1R0qlvXZKL1awpCgzJwfhLgu6/kRGb
         pDm6XYQGTJ6ocFEVlG91D8Xi6MLgLlRC/I3thXwx5CJT25M7jeYy47V1p+hkgiBxwDTI
         1ppDljBHDbZXCzWCz20GWgNoWzJK8RMg3kq8m6htZmrwWRteAC6hXNtJjniJVj/b9CF1
         PaVY0b87EClXhmj0TRCgDv5Sfgcnf6DRcVQR9EAaOhmJlRMv4tICPFVUixXHu/rq+Aaa
         G/pLKStnfKZerWwOl1fzn/6HX0Rcx1gKymlYbZLbeXHwtPRq5T9yk9lzURCW2/lac39O
         dU0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=r+b0Ix3hWLDSPza+CXXhyXLVm72G2FKE+yj6hlfCjN4=;
        b=gm9x37FiQmJOe8beQ9xuzvTDsF9+T36BS2XpR0eHngvG0focYtzvo5avtVe5zuqOLR
         0vKbU0EF1HWl94WiFspQHSdgFiWJOo2JLVISL+prfk3Hk8lWdmOO8inrORZlcUzj84Wl
         wyFADfjIfXKKHWg1vOL2K/pzJXTBYhsM5qlv58Hpla84uW/eDwwvQGZcWPChMaumiNWk
         66Chn+jsF55fU0POiyaZt1rU4iU0NSA0MRpIR2UETHXFO7rzsj6cueNjlqA2iaNPFeDF
         cmTKKcl6RVOISFHT5wIWccbp+CTSLBOyJRsVaJS3SnKLrXbSilheoyMomf6Xkb5Rkr1m
         4CFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QaJHEa7W;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r+b0Ix3hWLDSPza+CXXhyXLVm72G2FKE+yj6hlfCjN4=;
        b=fDNBoC3T144fwKHUoy786uMajRHbGtl858R1gN9pUyJ52PU6jvGNS2SkcuLAyrQt8w
         IzcLzWXGLPOYKE548oKwuHBMijewbj0AX2GaNUeUjwbsqBIEAtyF/tIGhNPuQDd73Hlj
         c40lRR30goDF7V8tPcONLZIVr5sbfacfuGeK47Y6c4lO4aQ47sDO9f/aopeN1w1rvZjR
         rnQ+IKzHbEaisml4qgH3SHWRRZsWTR7n9YMw/NUxXN7m9prT1DY5jU+lti6WSbvSn+c9
         P8RuBSadn5hPHrHohbzhKBO5WZFHOlWjHwq4wKJSQGiAuhMNilnw/2EborsyOiYqqIxG
         vHQw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r+b0Ix3hWLDSPza+CXXhyXLVm72G2FKE+yj6hlfCjN4=;
        b=SbrtX6B5884WClevShyNa9OUBqEvc9y1TYv4w+61IYOG3G9/3QAW+Kp1YH6R/pqS0A
         xkbgv1aGxgp2yYK3V2xoi8wwoHfYxW54OEi1vJqYaSqRwc19C4wE/ybojB2wrmFBcUMV
         iqOl7OogVt9qjSQ4Qn1+PguyPbUsIqz3cqrEaZKU1kuQgXLw+05BIAv4sQHVNew1jUcB
         IDW+yA3TVSLw9K+yCAZwFHSojMWbppCwddPlQ/bDk2fVz48VISW+t5YNJOb0wWDpYlQg
         ouiUHQcwT2bLOiZrnzcH5QZK0zo6KLLoHTTGsW0CdxRQHnhs4ciOrebcUTfReEWObEPt
         hd0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r+b0Ix3hWLDSPza+CXXhyXLVm72G2FKE+yj6hlfCjN4=;
        b=l2jUnSdGNGfJ0r1P8V/qA/yJ/SZVkha9kfjkDWDlkz+w+dZqjUBvBonvd3NpoIMKlG
         4a4K+Z8Cg9PgIMaVikBqepOqpz7tpNOwOhs5nXHdHPzPcB5V4+0Ff3Z5H+VJAze3h9bf
         /qUmw73+a+hdzAIh3dkeCEhuJMeIs9EDaO/DNJ//PlwCpHnHI7PWXCqwURccrZHfelM0
         Qj+I5XnfrSOqJ9z6oaYpLW0b/GU0mRCM9qOAvCtqx74SXjM95WGHQssjcuzkXvz59+qP
         9g9hvPLrGviUheFKJV+kugUS1QPO+Dh2P9yFYUGzwKX1MRKnC3gTx3uL6j/Mau4qHpjs
         2Z7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUCJb6gxALuSt+oSoGzOHP/KA3nZEl8aLlL0B0DiSyDwAg8a4+G
	1NTzqZWX6ybGxM6FZ9K/2xA=
X-Google-Smtp-Source: APXvYqzU/CyXh0bqBqax3fs7in9x2R5ICcTYCSGjOkLv7NFnwvg2km5G92Aivwsuw2SYmpi7fe/KRQ==
X-Received: by 2002:a25:d0e:: with SMTP id 14mr14109032ybn.355.1583125845562;
        Sun, 01 Mar 2020 21:10:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:fc04:: with SMTP id m4ls2185680ywf.8.gmail; Sun, 01 Mar
 2020 21:10:44 -0800 (PST)
X-Received: by 2002:a81:3dd5:: with SMTP id k204mr16512680ywa.510.1583125844497;
        Sun, 01 Mar 2020 21:10:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583125844; cv=none;
        d=google.com; s=arc-20160816;
        b=ULi+5s7RrOidAo9C0QppdjJnwm3SuroMAI0y5MMliUMcGigpcJjVTcSjHyoncBbNmq
         ELfVVrwvkEt07K+DS1L9JafYv7WrVkX3oB63CmPOyNqMbSJcetznH0giHsh7OYjLVH9v
         +NFKHSNHJo/Mrf6ViOfR3eYI51dFLm5G1kLvwMQ+m3HNmv8bq23wx7r7ez42HxeK14SW
         wCH/E2S6759fdQhp+irbBuOmpnArlCDuf3EveIklOVg6dVOK+9//sez9w0NgxWC0dJ7i
         F8HOBUpLDr5nAftSxOfuX72P5on2Qoyrx0m4Fl7wdWOUqXjfvhU+88fqF2cUsF4f+QKw
         fJ7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=T8fgcUH96BtI1H4QvYoKauEYCCbRMy2bktXV5r5B2T4=;
        b=o5N8bJyotLYXotBjBe6CCy3CEZxvs5KMHV7cd9nC3q6dITEA92d6O5ou39M0utcBRg
         YaquRMdL5XpmHX3s6uPkl08UNoNKSYnfxGVFHVaP+5EaSZhO2saDVQsgKVoffQRNzRIw
         6YVyXL1BtjCB/xGt75yjrVdJAOyleXN4PyoODIM2Pm8icobzT9X45XpWiCUUGA3K7uip
         OLdb2DcAy8shtw9nbalmnjKsNhivaZL0cp/eyaGyefYwwUw1+ix0Xl9SNN/oui6BpLSW
         Hsc7FMMShe800GclVwnChAnfRV8T23lm4pyyAE//ekSxPu0cc9hIYVu9beAQjjhD8ldZ
         t94A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QaJHEa7W;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id u7si930309ywg.5.2020.03.01.21.10.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 01 Mar 2020 21:10:44 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id w6so8466997otk.0
        for <clang-built-linux@googlegroups.com>; Sun, 01 Mar 2020 21:10:44 -0800 (PST)
X-Received: by 2002:a9d:34c:: with SMTP id 70mr11221277otv.174.1583125844002;
        Sun, 01 Mar 2020 21:10:44 -0800 (PST)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id d17sm443969otf.77.2020.03.01.21.10.42
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 01 Mar 2020 21:10:43 -0800 (PST)
Date: Sun, 1 Mar 2020 22:10:41 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Paolo Bonzini <pbonzini@redhat.com>,
	Michael Ellerman <mpe@ellerman.id.au>, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [GIT PULL] Second batch of KVM changes for Linux 5.6-rc4 (or rc5)
Message-ID: <20200302051041.GA2698@ubuntu-m2-xlarge-x86>
References: <1583089390-36084-1-git-send-email-pbonzini@redhat.com>
 <CAHk-=wiin_LkqP2Cm5iPc5snUXYqZVoMFawZ-rjhZnawven8SA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=wiin_LkqP2Cm5iPc5snUXYqZVoMFawZ-rjhZnawven8SA@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QaJHEa7W;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

+ CBL mailing list, my two cents below.

On Sun, Mar 01, 2020 at 03:33:48PM -0600, Linus Torvalds wrote:
> On Sun, Mar 1, 2020 at 1:03 PM Paolo Bonzini <pbonzini@redhat.com> wrote:
> >
> > Paolo Bonzini (4):
> >       KVM: allow disabling -Werror
> 
> Honestly, this is just badly done.
> 
> You've basically made it enable -Werror only for very random
> configurations - and apparently the one you test.
> 
> Doing things like COMPILE_TEST disables it, but so does not having
> EXPERT enabled.
> 
> So it looks entirely ad-hoc and makes very little sense. At least the
> "with KASAN, disable this" part makes sense, since that's a known
> source or warnings. But everything else looks very random.
> 
> I've merged this, but I wonder why you couldn't just do what I
> suggested originally?
> 
> Seriously, if you script your build tests, and don't even look at the
> results, then you might as well use
> 
>    make KCFLAGS=-Werror
> 
> instead of having this kind of completely random option that has
> almost no logic to it at all.
> 
> And if you depend entirely on random build infrastructure like the
> 0day bot etc, this likely _is_ going to break when it starts using a
> new gcc version, or when it starts testing using clang, or whatever.
> So then we end up with another odd random situation where now kvm (and
> only kvm) will fail those builds just because they are automated.

Just FYI, 0day clang builds are live now. I have not seen anything from
KVM yet but I do not know how many configurations are being tested and
such:

https://lore.kernel.org/lkml/CAKwvOdn9mpsjpAbVQbS0LC9iPtNrCZU+Pbh2Bt7kSXa4S8KQEg@mail.gmail.com/

> Yes, as I said in that original thread, I'd love to do -Werror in
> general, at which point it wouldn't be some random ad-hoc kvm special
> case for some random option. But the "now it causes problems for
> random compiler versions" is a real issue again - but at least it
> wouldn't be a random kernel subsystem that happens to trigger it, it
> would be a _generic_ issue, and we'd have everybody involved when a
> compiler change introduces a new warning.

Indeed; our CI for clang builds is all done with the master versions of
clang available from apt.llvm.org so we can catch issues as soon as
possible and having -Werror would mean a potentially benign issue (like
one we are currently dealing with where clang's -Wvoid-pointer-to-int-cast
warns when casting to an enum where gcc does not:
https://reviews.llvm.org/D72231#1878528) would cause our CI to go
instantly red across the board and not catch other issues.

I would say a CONFIG_CC_WERROR or something of that nature would not
necessarily be a bad thing since we could just disable it for our CI (or
have it be default disabled) but I think if someone cares about -Werror,
they should just use the KCFLAGS trick at the point, since I would think
that would be easier than maintaining a separate config option.

> I've pulled this for now, but I really think it's a horrible hack, and
> it's just done entirely wrong.
> 
> Adding the powerpc people, since they have more history with their
> somewhat less hacky one. Except that one automatically gets disabled
> by "make allmodconfig" and friends, which is also kind of pointless.
> 
> Michael, what tends to be the triggers for people using
> PPC_DISABLE_WERROR? Do you have reports for it? Could we have a
> _generic_ option that just gets enabled by default, except it gets
> disabled by _known_ issues (like KASAN).
> 
> Being disabled for "make allmodconfig" is kind of against one of the
> _points_ of "the build should be warning-free".
> 
>                Linus

FWIW, our clang powerpc builds were broken for 4 months because of
arch/powerpc using -Werror:

https://github.com/ClangBuiltLinux/linux/issues/625

We have infrastructure in place to carry out of tree patches if
absolutely necessary, which we had to use for a while:

https://github.com/ClangBuiltLinux/continuous-integration/commit/4d1b3c74bcb3ed0090073c9d9e6ae303425d4adc
https://github.com/ClangBuiltLinux/continuous-integration/commit/0c3885049e2a6e28c72be13f5b05fb25ff79904b
https://github.com/ClangBuiltLinux/continuous-integration/commit/533fcec33fdb8526333a6fd91d24534eeb96bed5

Even now, there is a warning in the RDMA subsystem that points to a very
clear bug that has still not been merged into your tree:

https://git.kernel.org/rdma/rdma/c/4ca501d6aaf21de31541deac35128bbea8427aa6

I am not blaming anyone for that, I get that every maintainer has their
own test suite and pull request schedule but I believe that it shows
the general apathy towards warning fixes from maintainers (at least,
from the perspective of someone who sends a large amount of warning
fixes). I would argue this should change before -Werror could even
begin to be considered as a default option.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200302051041.GA2698%40ubuntu-m2-xlarge-x86.
