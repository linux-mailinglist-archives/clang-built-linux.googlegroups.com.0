Return-Path: <clang-built-linux+bncBCDJ7PUVRQGRB4HCXGCAMGQESEF2KZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DB5370AE6
	for <lists+clang-built-linux@lfdr.de>; Sun,  2 May 2021 11:31:29 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id 65-20020adf82c70000b0290107593a42c3sf2061028wrc.5
        for <lists+clang-built-linux@lfdr.de>; Sun, 02 May 2021 02:31:29 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619947889; cv=pass;
        d=google.com; s=arc-20160816;
        b=Et9+QL3riCuS8fm7MH5nZx5ikGx3/DmCzIZIFxvUBURPzHPkqw2tYLzAyz5KJJg/hb
         A4bixbM29Syd6WEQy3K8ce9T7BYtmmFkpfOXcchhqaUMPyA7RMBm8wWv4hVy1wXOYCZe
         5htcvjpf9tUI/1cezAhZW/qDE0sDIJkqyB2LXcYDUF0UKGFwK1U78MjEehXlASg5r1mH
         qzYLN2ZDkW+Lzs2W3EzMS2sl1kYsVP2vc5ITndK8NeepVurUuGj1a6HLJQS5BRV10vnV
         mcWNbrybv8Lrk9oejObcDabXuPmNGYW0gJ1LPEYKBGh732fgenLNLKfS0QMsFfGv3gWz
         /+LQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YQwmQQQGujoJOUJNcKy/ekPy0AroZGLTaCju1aXsjNg=;
        b=EnXjSmQxUuUpG4Nx8+bi0NN4+sw8NZI2jg8FQseUU82klDZqV5TLM+K92sx6fj7dGk
         82jSdnXau0sNQy5dVmgwR4AlUEXrPx58XHC5bQQ5px/9yQDfgSMnIN56tJx+/8lR35xr
         f/+J20rZVq7aXlciUOj4pIgCbpOTwEi8Hla4v3b8WoVRlNPO0u8Wbkx7TmRxVWI+jx0J
         ssfTSHn1cAO81PlAfYoviG+DNecfEligrHKYB43VQHdFcx5v+q2kdtq6YTWO/PmQ/EBc
         G0mad+vyBshZ+t7YpyRjZMnNf1uCkBv1g2+SGIBIqkqrr1mbvO/p9QQi5jdTmTaYvtgd
         Pwew==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YQwmQQQGujoJOUJNcKy/ekPy0AroZGLTaCju1aXsjNg=;
        b=riaQMwjC4MZm8y5zC7STwabfaNN43+o91lD87alXcVPtbU8+kOy+lN7iXwXtNjbUKa
         Oafb0dyGlSQyNx9oNCgU565WimiNp5a0JEiQvxdECxt5NOwGaVCa25ak41cyLQ6NUw99
         mAuKcVD75MJQJpizkF1aiRJVYvIoKYjZngM5eOZKAD18KMlWoQj3l4wwBghCBYaF23sF
         xJnwLOHOfkSYJU6Qrl9+9EUoFhMp98bnDLKfppx2CCaKRrxBwaf459Hqez4OpuD0f8Of
         xvaNzEj3sAZ8HUglgSxuBmiyZbHFjGBViR1JbFvLD66G2mgbIKf7fkgKivh3LBAPkT5N
         O6hg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YQwmQQQGujoJOUJNcKy/ekPy0AroZGLTaCju1aXsjNg=;
        b=CRyKPIxdu3ndEECPIsgbDRE3G8MLmR2x+zLstD2nTzjkFW8Dur0B2ra2PiOTmEiqsy
         MFbkJ/VWD1fTXZWqpUEf8P5r8Jz9C5Rg8jzW2s/gEtvjt8X3W/8Tbgw/J62AUmN+eKrN
         72FBvONo9qeqJtQ9HGc/JF1KiemACN2BhABu2+fpf3HiWaCbF1FaoyLQATXF5eAYHt6H
         /id652c+YXRrUsoqyniCtsFzjzwaQo68C+DRFdXUey7i3r9UkQ2dt8z/FI97+goMR3Db
         lU6UI6ksu7CRhyvoMekeUGfHi6ph0kJtLH7YeuIHnO1nFK/B5v0Tzh6PgUmQAbmA1BBo
         P23A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5322HI094XjbWhEDpsOBS18ftB56EcPu5++CKygpsLaHzLeFKsZU
	DDrQ/coBgm8dMAm1R5YOOjc=
X-Google-Smtp-Source: ABdhPJyJLcxZwoJ3b5OvmgM6oorqkUaUgtQ5ypmUr7Np3wnEIWls3+e1FlHv1iUWnVhT8faA0en9LQ==
X-Received: by 2002:a1c:4482:: with SMTP id r124mr25986102wma.42.1619947888980;
        Sun, 02 May 2021 02:31:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f68b:: with SMTP id v11ls10269518wrp.2.gmail; Sun, 02
 May 2021 02:31:28 -0700 (PDT)
X-Received: by 2002:adf:c002:: with SMTP id z2mr18342148wre.100.1619947888159;
        Sun, 02 May 2021 02:31:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619947888; cv=none;
        d=google.com; s=arc-20160816;
        b=CUEmowsRBCjm4qUmX179MbRs+eMtZ9l8UAypfYboqKhGpQFBz6cQlb4ssB96A+pQM5
         s3S9d2jukWMZVuUgytc8nCmUbir7pKnaXWeOLDm1UZqNFsJUZS8e60/aybKvGjkXVXwk
         L7gBA4GuWawxPHWRYAwEjiVtBUSJE6wFx1lI4v4dm+KKUzO08c/L0fw/mGgWGkQqQ7Ny
         sW0uL/7Ztv7rSpitOO+8nSxWGvlJ4RJsVT56oDm9aib1ZBlFQ0fTpydwDVlGtXads+Ew
         JlTZPFLmdwVl5LPSVBDPnqwMXMGji89A5NAZ9Ya6w365xv/YOnrIEyDv4WME75lAGZck
         TOVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=H8oMD+JCd4CX4dLUahoafMB8lX5OqKWdqeYaKFPuk4Q=;
        b=qmBv8hwXIt3scvjpE+f8ixBHybPI2zUgr0fNn0s2Gw/8nlih0o5coMduIEtUt3+i9P
         YDaxz/1MLRBRZXfWkvC+UVyNCUYLG/0dmOfyYQSJTaVpjzW2hY0GhIXjTl3qIuYJDh6v
         cL3gAJEUAbisYTmmi2ai1LiHS//ANTOOH25WKJwIKmdAAKwRG2KkONPkxDg6NNSoHhLv
         lEsyKadSGVMh5ENr7wJ8LWfw3/fVnlFwAOPqNQzqJJEA4j4ekBqUJTMeJNNvHwNd4TyF
         +IAFQCajgEKWSBCBmKC7Sr+Unk2vpw1z13ONCQL7vkQe6U1N0rPOUkldHllTY5S7QZ0e
         SPNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de. [2001:4ca0:200:3:200:5efe:8d54:4505])
        by gmr-mx.google.com with ESMTPS id s141si1468151wme.2.2021.05.02.02.31.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 May 2021 02:31:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) client-ip=2001:4ca0:200:3:200:5efe:8d54:4505;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 4FY17x3YVmz58;
	Sun,  2 May 2021 11:31:25 +0200 (CEST)
Date: Sun, 2 May 2021 12:31:23 +0300
From: Adrian Bunk <bunk@kernel.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Cc: Tom Stellard <tstellar@redhat.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Fangrui Song <maskray@google.com>,
	Serge Guelton <sguelton@redhat.com>,
	Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <20210502093123.GC12293@localhost>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: bunk@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of srs0=zsue=j5=stusta.de=bunk@stusta.mhn.de designates
 2001:4ca0:200:3:200:5efe:8d54:4505 as permitted sender) smtp.mailfrom="SRS0=Zsue=J5=stusta.de=bunk@stusta.mhn.de";
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, May 01, 2021 at 09:32:25AM -0700, Linus Torvalds wrote:
>...
> Yes, it can save on disk use, but unless it's some very core library
> used by a lot of things (ie particularly things like GUI libraries
> like gnome or Qt or similar), the disk savings are often not all that
> big - and disk is cheap. And the memory savings are often actually
> negative (again, unless it's some big library that is typically used
> by lots of different programs at the same time).
>...
> I think people have this incorrect picture that "shared libraries are
> inherently good". They really really aren't. They cause a lot of
> problems, and the advantage really should always be weighed against
> those (big) disadvantages.
>...

Disk and memory usage is not the biggest advantage.

The biggest advantage of shared libraries is that they enable 
distributions to provide security fixes.

Distributions try hard to have only one place to patch and one package  
to rebuild when a CVE has to be fixed.

It is not feasible to rebuild all users of a library in a
distribution every time a CVE gets published for a library.

Some of the new language ecosystems like Go or Rust do not offer
shared libraries.

At the end of this email are some of the recent CVEs in Rust.

Q:
What happens if you use a program provided by your distribution that is 
written in Rust and handles untrusted input in a way that it might be 
vulnerable to exploits based on one of these CVEs?

A:
The program has a known vulnerability that will likely stay unfixed.

This is of course not a problem for the rare software like Firefox or 
the kernel that have CVEs themselves so regularly that they get rebuilt 
all the time.

>                         Linus

cu
Adrian


CVE-2020-36317  In the standard library in Rust before 1.49.0,
String::retain() function has a panic safety problem. It allows creation
of a non-UTF-8 Rust string when the provided closure panics. This bug
could result in a memory safety violation when other string APIs assume
that UTF-8 encoding is used on the same string.

CVE-2020-36318  In the standard library in Rust before 1.49.0,
VecDeque::make_contiguous has a bug that pops the same element more than
once under certain condition. This bug could result in a use-after-free
or double free.

CVE-2020-36323  In the standard library in Rust before 1.52.0, there is
an optimization for joining strings that can cause uninitialized bytes
to be exposed (or the program to crash) if the borrowed string changes
after its length is checked.

CVE-2021-28875  In the standard library in Rust before 1.50.0,
read_to_end() does not validate the return value from Read in an unsafe
context. This bug could lead to a buffer overflow.

CVE-2021-31162  In the standard library in Rust before 1.53.0, a double
free can occur in the Vec::from_iter function if freeing the element
panics.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210502093123.GC12293%40localhost.
