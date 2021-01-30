Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBD7K2KAAMGQEBI46BSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BA4F30913C
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 02:23:28 +0100 (CET)
Received: by mail-oo1-xc3a.google.com with SMTP id z20sf5193789ooe.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 17:23:28 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611969807; cv=pass;
        d=google.com; s=arc-20160816;
        b=g8eUpnLd1ColQolHAuRKa8AzS7ucTG2XKzd1s8h5lfoiwXI3wL2sHnQOhcry8dsraF
         aMPwyu/6XaSucSSab5KQRmJtvg+YpC+Io4rT3+BqoqIjC3Y81J0TFjh2EClQ/CVSOYNs
         SZjeaSUVC3Mye+5vRmU+1qjGRigSQDLtOGb6qG32Wu6EJ9LkH5/SHUcjMSjeQZ+nQA0q
         II/TYi00T7brE7k9scTMF+BW/o+ubjN1RtXqp9BSioOtzlKPCrb3RmAkx5kdHoSolmlW
         A5zfW5L3UuNQr0vuFLtLdB4+g3+BFZfTgzSIygVt0Qm/mzMXo+eP15IyQ/lZcSMX6JdO
         Hxhw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ZyJZSBEjCGJN36BxMxviEt3vg3WtFcOE4ja1Xmb2jLE=;
        b=WmjfL2KbUQm0sCy/NppDQG+hzGWDrGpIBs361kLctExpHSOQKHgLPQSxqZDyscFIy1
         lSTLzNsaJXsA59lu1VG8v8vrRAAWPLNaqRAETz2/63bnBKPCIJSk8Hn8dRspFwv4ejig
         R6fxWJa+iseAr+o/Y2nVshrlRHlq92i9DeLU/GWwD1aYNCv6WegoE65rm+fs0FpKIV19
         Ns9zWuyaxtCdgkVkhbSqoCkHe8BSOrKTVUbUWtooap70YksdE0MY/0toSFohajlY6RvR
         Hq/+lhfnYi72la+MYjQCAgIrOVFVpjgoGqrgzZ4zLqM4V+d4+iq0eTxJ+RfHfK4cLlDa
         LRWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rSykOMDU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ZyJZSBEjCGJN36BxMxviEt3vg3WtFcOE4ja1Xmb2jLE=;
        b=ZpVy0Fd4hzGYNzc1G9l0uV7oUkKEuhiy5WoS2xkOnhQKUq1CHEifllXB+KdlT5XPjv
         ymAYmJjbzfGbtOAKxKzYGE+A4GZxjmXHA1JVT78eeFM4Ypp3WWozgrEdpL8iGOpZ3N+z
         OIl/bhkRQKAgQm9f7J6VkOkvm6hQ1D097RPI7uBAJn7sFxQlK6pTi3FiN/DRKHQAch29
         QqiN8fR6QOTjoigxG1t0lS3EtmCzHSILlZ3pInr9BFBc3kk5Ek0muHDBqtRtM737aPCm
         SRjbaHGl/RH35P326iV0H3685+059fEKcuCqBCWUxOvYscMpaCkQrEd5CSd6t5hb3NQ3
         TvGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZyJZSBEjCGJN36BxMxviEt3vg3WtFcOE4ja1Xmb2jLE=;
        b=JDi2zMvmT8x6Sc+RsxXTaKq7q8LA3mbZk5YzWQKTh9oHR4dbRQPqqCV1KttjyQBZrw
         wMFVD+uBYYBBs4JxL7xYBSmzY/Cpz2z54w4HdUbV7Ahlx5wxaqP3cwEtaWJSbmiArBex
         kaoy6hfJINubAmGMwRy6J6vRvhW5qnuFPplFKpfF8Q9BSL+kq4vyrc+h60oUcj9wWqDq
         UDaCW9lTNGCUDZqdPG5tFI/qDVLDNVkcHPCE3XMkLudL+ckC4O6kak8655j/Kge0+WHE
         W0224cviqPgjvxiJbVG5Tqlh7uJSrWtW/a0HRjUq5Ub1ofgnL+9grWYE6my5fGa5CCpF
         VRsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312UazwbHN7Xh+Iwwpg2gpN+h6nwftCJ7A+zA/u+vKOpsZYkm+e
	XOiBTDAxY6GV9ftfHdTtTX4=
X-Google-Smtp-Source: ABdhPJygbTIhkg4+AyVm5iEop1uEW3mOGoV5b5KboKif5fVpKKUP3giDKGDxxpYHQF6bg12hV7tX3g==
X-Received: by 2002:a05:6830:3494:: with SMTP id c20mr4696870otu.25.1611969807639;
        Fri, 29 Jan 2021 17:23:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:923:: with SMTP id v35ls2604951ott.0.gmail; Fri, 29
 Jan 2021 17:23:27 -0800 (PST)
X-Received: by 2002:a9d:3bb7:: with SMTP id k52mr4789453otc.251.1611969807200;
        Fri, 29 Jan 2021 17:23:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611969807; cv=none;
        d=google.com; s=arc-20160816;
        b=olV6b/FxGPj49kBviIQsf48T07wHtYdZW01KJHa/E5FiUOCUg2R/cqklbSVKoc49NJ
         fbVMWylSFRAXvTMR6i4g3zPIia3uN8nUTM8tMDjyYVpEy+KuvZYea+P0eO9OEnmrZiNC
         /bSgAQKWBxnNOk1mzHRESCkMtmL8xXHs7+B+1VGY7++EnfZvnX7aRQ/yirTyzgDO3XWe
         29G4D5VkLqw0ptzNJAU2OFwDC0FM8EOvrXKVLtxYd+JU+0rjrzOqQ6K0DYlY+a+oEQq6
         YX54kSfQmV0o7Pgk/d6doMWAHb1vbDyymqt10Dvhi4adYoaOtV+2H34tWOZMaIxRlZxk
         VLaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=E2LCroANpcR584hR7Y4CWPWfgkfD56BVSNJWtEfWcdg=;
        b=RQQGABLNj9SA6Kw0XX48DUBXfbup+1YSHB83r7L986C99UC64ICVfrBgG2cvkyyp9t
         tR58SfSkraDE9XQuhLMWIFqMjlsCJGjAvks00E1xJajEG1Nsvg02NTy9Aalj/5yh+uBq
         mfY59o1tuJxxX6QHVMtemhl6Y/IVqEj/tMWr5urjBCgi3Th0pU3HZmEBVuZ66gCWyukc
         YKzw0rSYzcZ69ylVpXgjYUZIm10K12IbTPGbdXMGO+M2fjTIL6+25wcTR2E8x+DrmMos
         33YCnNER8qKu7csWlBdaDEipTlW/FnFCHG5Ds7I9CPjX00FqHJz6pdnFExUsZGCRgI3r
         /4yg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=rSykOMDU;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r8si633037otp.4.2021.01.29.17.23.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 17:23:27 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 40F7264DD8;
	Sat, 30 Jan 2021 01:23:25 +0000 (UTC)
Date: Fri, 29 Jan 2021 18:23:23 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Arnd Bergmann <arnd@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Miguel Ojeda <ojeda@kernel.org>,
	Lukas Bulwahn <lukas.bulwahn@gmail.com>,
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>,
	Dmitry Vyukov <dvyukov@google.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ilie Halip <ilie.halip@gmail.com>, kernelci@groups.io,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Tom Stellard <tstellar@redhat.com>,
	Fangrui Song <maskray@google.com>
Subject: Re: Minimum supported version of LLVM
Message-ID: <20210130012323.GA2709294@localhost>
References: <20210129212009.GA2659554@localhost>
 <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK8P3a19=Zdni0G2LQE58rrdgJ18zNoefio6GwVg36m5B0Eqdg@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=rSykOMDU;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

Thank you to everyone for their input so far. I am replying to Arnd
because I think we are all generally on the same page so far.

On Sat, Jan 30, 2021 at 12:35:43AM +0100, Arnd Bergmann wrote:
> On Fri, Jan 29, 2021 at 10:20 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > 2. There are still outstanding issues with LLVM utilities that prevent
> >    recommending LLVM=1 for some architectures so committing to a minimum
> >    supported version might mean we would need to insert more workarounds
> >    as time goes on. For example:
> >
> >    * ld.lld for MIPS big-endian:
> >      https://github.com/ClangBuiltLinux/linux/issues/1025
> >    * ld.lld and llvm-objdump for PowerPC64 big-endian:
> >      https://github.com/ClangBuiltLinux/linux/issues/602
> >      https://github.com/ClangBuiltLinux/linux/issues/666
> >    * ld.lld for PowerPC64 little-endian:
> >      https://github.com/ClangBuiltLinux/linux/issues/811
> >    * ld.lld for RISC-V:
> >      https://github.com/ClangBuiltLinux/linux/issues/1020
> 
> What about armv4 support and big-endian arm32/arm64?
> 
> I had disabled lld for those in my randconfig builds last year
> and did not expect them to get fixed. Has this changed?

I don't believe so (as I commented on the issue tracker) and I don't
expect it to. There is not a ton of bandwidth for lld to support older
architectures or less common endianness combinations, as Fangrui has
commented in the past.

> I think pretty much by definition there will always be corner
> cases that require a newer version than the minimum, or that
> might not work at all.

This is a fair point and I suppose that is what Kconfig is for.

> > If we decide that it is worth defining a minimum supported version of
> > LLVM, I would vote that it be LLVM 11.0.0. If we decide that that
> > version should stay in sync with the supported clang version, then I
> > would vote that we update that for Linux 5.12. Taking a look across
> > various distributions:
> 
> I agree requiring llvm-11 as the minimum starting with the following
> releases makes sense. The last stable release is still fresh, and that
> can be built with llvm-10 on many architectures, but requiring llvm-11
> now would probably let us remove some workarounds and stop caring
> about things breaking in the future.

This is generally what I am getting at, namely with the first point in
the considerations section. I would like to avoid sending patches to
workaround lld-10 bugs when we know that lld-11 has them fixed. I would
rather tell people to just use lld-11.

I feel that we as a project have gotten a lot better about caring about
the quality of the stable releases of LLVM because we testing the main
branch while also testing the stable branches and help with getting
fixes in there that are relevant to the kernel. I put a lot of effort
forward to do that for LLVM 10.0.1 and LLVM 11.0.0. Now that our testing
matrix is growing, I think it will be easier to support older versions.

> In the long run, I think we'll want to support more versions,
> so if the current stable kernel (5.10) can be built with three versions
> (10, 11, 12pre), the next one (5.15?) would go with four ones (11, 12,
> 13, 14pre), and the one after that could build with five ones
> (12, 13, 14, 15, 16pre), all depending on actual technical requirements
> that will come up of course.
> 
> We probably won't ever want the same 7+ years of old compilers
> that Linux supports with gcc, but I would certainly plan on more than
> just one or two year old releases.

Tom brings up a good point that due to the nature of LLVM's support
period, this is going to be really difficult. With GCC, it is possible
to get fixes into the compiler a couple of years down the line. With
clang, it will usually see two releases: the major release then a minor
stable release three months later. If there is something that is broken
with LLVM, we have no choice than to workaround it or tell people to
upgrade. I have been tempted to start a conversation upstream about
improving that situation but that is a much bigger issue.

> I'm actually more worried about the reverse: as there is six year
> long-term support for kernels, do we expect to be able to build
> the oldest kernel with the latest version of llvm at the end of that?

I think the answer is yes. For example, we can currently build a 4.4
arm64 and x86_64 kernel with clang 13.x.

> E.g. would a linux-5.4 that today can be built with clang-8 through
> clang-12 allow being built with clang-8 through clang-21 at the
> end of its life in 2025, or do we assume that LTS kernel users also
> have to use old compilers?

I think that this depends on if you see a newer compiler as a feature.
Given that fixes for newer versions of GCC are taken into the stable
kernels, I would argue that the same thing should happen for clang (and
currently, it does). However, we have had some people push back on us
for that because clang is the new kid on the block. There is also the
weird question of what is more of a fix versus a new feature. For
example, building an architecture with clang: is that a fix that should
be backported to older kernels or is it a new feature that people should
upgrade their kernel for? Ultimately, I would say that if a compiler
upgrade breaks a build that was working on an older kernel release, the
older kernel release should be fixed or patched in some way, unless the
compiler is clearly buggy or wrong.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130012323.GA2709294%40localhost.
