Return-Path: <clang-built-linux+bncBDYJPJO25UGBBONYUH4QKGQEGDQJJBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id C84F723AC9E
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Aug 2020 20:49:30 +0200 (CEST)
Received: by mail-yb1-xb3d.google.com with SMTP id u206sf11930802ybb.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Aug 2020 11:49:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596480569; cv=pass;
        d=google.com; s=arc-20160816;
        b=MH5Gl++YBN1DmxQXm9EspYhpYUXLCZhM4NKbIOI7pqQ69e7Kt7VbabaGIMNscxORsf
         gMmYpmlGEuAW34AMOJB60jipAkZlHv7Ouq0u83EvCg6eRzK7/TvTKCmypbNzSm3DYkdp
         TAAoiJsWi1jPK81R6oQ/Pkf09EXllK/BmKecqMp8w2wjA30Ej1NAlk5TPODVBd3uwJum
         8geQfyrvPpeQ1II7jv7yCD6wWaQVbtgae39HsPFJS9rH8EzoSnhYWglmvtdQodMWTSey
         9LgetgSaaiynUjWVARzF91lmEmmpbw+yHvXVVFmD2UaTrm1rRqcgCnu8IIWiGZ1cVkpx
         RefQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Rqbt7q3dJK6jETWhN5htOnTN3TLHvPlhqJoEnQpL6v0=;
        b=v80Fead0ikVVSOM7bf24AnEh4LmCuPE/9CcyL9yOgEXnUR13qBmPBEDCVkVZypOAyK
         aPFf0tId4CyD6bmU1AaK78tLuZ8hmNc3gMq/iJIaRTlIH5GXo79UGu7pJh4sh5Da6UKy
         OsSkWiVodpsNqdBOODqmwOrfoJxAHkb6P2yh4y5qrZ93LWcWG42UELhc8b4s5J4cuAHP
         40twiEFV40csyGKc7WTYaYaVm74oMuqHMwcnEtFByL/g85OmnTqU2E6HcNIFyoGkc1Qd
         HsQ03lzWt1y77Y8C6atPaeC723ALaeFEszIWg4FcYs/0nVxRdQhAs2/Nz4Xv1xCSCJqm
         A8tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qo7Mi4cL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rqbt7q3dJK6jETWhN5htOnTN3TLHvPlhqJoEnQpL6v0=;
        b=UmbeVEKtBYTzYSGta7R0f2BZiF8AJlYE8G+lrzgg/KubRaRiJiAyrLmfPX33N+HlMx
         7eE6pEb94jrMiAEoOaOETwYI3QQnb5h+6RIag0Zi15QKr4KCcKVCsoWusGhoDt+k8Wsh
         6slOlj6LVuguJqjQJuurgNfkhyg/EBRgHqej6XQLunqTQUg3ed5xKYOBPMawW2aTlSUy
         Si3Oe7Dq4/SCJ5G6fHuOev+p3fPY7hPvkfD8z74RebiQUCQOcSGSsjHD1GJdzhAG9mnX
         2957p3fbwIJcnhviSNMNDdczo3lnhV5Gnt1mzw0dW0OWTX4s+1fAt44pjyZZYc5c50ny
         J/4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rqbt7q3dJK6jETWhN5htOnTN3TLHvPlhqJoEnQpL6v0=;
        b=K+WniTFhpXZvRY62xFUS0gYQlyWheaNlLm4tViB5OVvlU1oYVml+wMmHlA9RvVqxL5
         7NOZjFEXxvhVP3AjahpdspBCY1VNJhmunqV9w4U9Rv1Z8fQltnfatD0cdv93kgzmrFep
         eIA5rVf6eTtxr5BhLJhI3sppnZ0pDB2tvd+QfUe2sYWisp4MaaPzD4xsChs5hH+AzdJw
         zaUzDUupq+aoeOJWiPuRx/nvEBnTxJpl8kZdTLuk2fEYLO0gL0b/b+GNSn8JVUfLFrOa
         UjSWz9pwxq0DE1rgrChNJ/9BOZ6V+ssY6z0H7otys6XX8hMGE0u1l03q5xqsp6qpECmY
         cfpw==
X-Gm-Message-State: AOAM531CJyMZsLgGRS4YwJbUYfld1WRGmJBI8ruNL6EGlKEyYyN1ECK3
	ue1bY1dcuwYSw9wWJoYjyDE=
X-Google-Smtp-Source: ABdhPJx+l0qWnRAUSM40X1aynKCzXDIIXoxOwDWDW79TRxwCkZdkOKHywMMfmGAPB3is2zDHSy+qgQ==
X-Received: by 2002:a25:c345:: with SMTP id t66mr28610293ybf.218.1596480569515;
        Mon, 03 Aug 2020 11:49:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:2f4c:: with SMTP id v73ls122872ybv.0.gmail; Mon, 03 Aug
 2020 11:49:29 -0700 (PDT)
X-Received: by 2002:a25:df94:: with SMTP id w142mr4847984ybg.371.1596480569194;
        Mon, 03 Aug 2020 11:49:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596480569; cv=none;
        d=google.com; s=arc-20160816;
        b=KStLAj6gN4gPQXiLRF1Dp8+KYB+t+HVlHQ3YeWZouN6QsjKOq5Yao69ETlXZl570S0
         YjlrVlU7SoTEU6mIcW6xL7bJT1DAvTD9UsBS0nSpsY0RJlzbjZJ6eow5n4F6jK0ijvYP
         D8gQrl1e9N+emqnT80Lw+PsD62ohQ7miTRLAq52UXZFguTpjPCXnGSAKYTR8/6uzNGPd
         I40cFyj8ShITB/cnsHgLhN2fcG3c1gBgc+sop7QgojYw0uOHxNEPk9GFPFq7xyXOnP35
         mY1uIZ3WNoFb9dduKMg/8lZ8T3x7zQXoeUNPJJ24FTwf3DNJgSBfsiH+zu8qO3oPLiY4
         Aw0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xo2g0ZZdJl+wryEK7qdihsTMQHTPQB2RjHE5hEFtg1o=;
        b=SE2jmYTgMWmsNo8sqp8ecfG/qBvIWNW1hYBZxBaQoVZY8esXu1laqRKxqlK+i9rtpF
         r23qqe2pxVH7Zd8U2UdSqKzR59IJBbv9kmQfZViUglXwa5/gslmzrg353JRwB2tvpbWR
         QAW/DxEFTf0I3nzRLX7PSokt268lCtjyF9cTnJDvdqlF/NaKQUs3mcU1l2XZg5N3WZ+4
         5hBbEu5DUGt2y4cBhS8ZLfCqD7k1IJZs3HTDRs3xF+v5lTqqvKyFG9Pg/fOqEDpORIV7
         qilQ4cEP5AmJ+V9CJETbIak+juIAacawR6l0QaX17j6gYzUC2PQKMQKO3aRYCxB7IrEI
         95Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Qo7Mi4cL;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52f.google.com (mail-pg1-x52f.google.com. [2607:f8b0:4864:20::52f])
        by gmr-mx.google.com with ESMTPS id p67si179011ybg.2.2020.08.03.11.49.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Aug 2020 11:49:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f as permitted sender) client-ip=2607:f8b0:4864:20::52f;
Received: by mail-pg1-x52f.google.com with SMTP id x6so5332777pgx.12
        for <clang-built-linux@googlegroups.com>; Mon, 03 Aug 2020 11:49:29 -0700 (PDT)
X-Received: by 2002:a63:b546:: with SMTP id u6mr15616172pgo.381.1596480568482;
 Mon, 03 Aug 2020 11:49:28 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdnni_G2tw+0eCLQQvvdcz97Fy1-cBjzPvLwbBNDu1-KqQ@mail.gmail.com>
 <20200728004736.3590053-1-nhuck@google.com> <alpine.DEB.2.21.2008012031540.14646@felia>
In-Reply-To: <alpine.DEB.2.21.2008012031540.14646@felia>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Aug 2020 11:49:16 -0700
Message-ID: <CAKwvOd=V6-p1H1F65gFAQm+h4Qgt_98-XJeUSNaONmPE9yZciA@mail.gmail.com>
Subject: Re: [PATCH v7] Makefile: Add clang-tidy and static analyzer support
 to makefile
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Pirama Arumuga Nainar <pirama@google.com>, Bill Wendling <morbo@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Qo7Mi4cL;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52f
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

On Sat, Aug 1, 2020 at 12:23 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> Hi Nathan, Hi Nick,
>
> I have been busy with other topics around the kernel and static analysis;
> but then, I read clang and static analysis in my mailbox in this patch.
>
> So, I thought let me give this patch a try on the weekend.
>
> I applied the patch on next-2020729; that worked.
>
> Then:
> $ make clang-tidy
> scripts/clang-tools/Makefile.clang-tools:13: *** clang-tidy requires
> CC=clang.  Stop.
>
> Okay, that is a good and clear error message.
>
> Then:
>
> $ make CC=clang-10 defconfig
> $ make CC=clang-10 clang-tidy
>
> python3 scripts/clang-tools/gen_compile_commands.py
> WARNING: Found 8 entries. Have you compiled the kernel?
> python3 scripts/clang-tools/run-clang-tools.py clang-tidy
> compile_commands.json
>
> Then actually an error in clang-tidy.
> Error: no checks enabled.
> USAGE: clang-tidy [options] <source0> [... <sourceN>]
> ...
>
> I will get to that later how I fixed that for my setup.
>
> Okay, good, that is clear... I need to compile it first, got it.

Hi Lukas,
Thank you so much for taking the time to apply the patch and help test it.

For the case of not doing a build first: gen_compile_commands.py
parses the .*.d files to build the compilation database and warns if
not many were found.  I think it might be interesting for it to just
invoke a build if it sees that, or maybe for the clang-tidy and
clang-analyzer targets to somehow invoke the default make target.  The
issue there might be that you need to invoke `make clang-tidy` with
`make CC=clang LD=ld.lld ... clang-tidy` in order to trigger a build
successfully.

Also, I wonder if gen_compile_commands.py should set a return code in
that case so that callers can handle such an exceptional case?  In
that case, I'd consider that a papercut or potential improvement to
scripts/get_compile_commands.py orthogonal to this patch.

>
> $ make CC=clang-10
> $ make CC=clang-10 clang-tidy
>
> Okay, I run except for the fix I needed.
>
> Where is the output from clang-tidy?
>
> It prints:
>
> python3 scripts/clang-tools/gen_compile_commands.py
> python3 scripts/clang-tools/run-clang-tools.py clang-tidy compile_commands.json
>
> That is it. Does that mean 0 warnings, or where do I find the output?
> The script suggests it should be in stderr once all the parallel runs
> collected it, right?
>
> I was confused; maybe a short summary output might help here.

I was also caught by this; for x86 defconfig, the kernel is actually
clean of instances of linuxkernel-* clang-tidy checks (there was also
an issue with the CWD for x86 in v6, but was resolved in v7 of this
patch).  I had to add a case that should fail to make clang-tidy have
output, and the check only checks for unchecked "ERR_PTR", "PTR_ERR",
"IS_ERR", "IS_ERR_OR_NULL", "ERR_CAST", "PTR_ERR_OR_ZERO".
(Documentation for that should be improved.) So if you add a function
that just constructs an `ERR_PTR(0)` and call it from code that gets
compiled in, then you'll start to see warnings from clang-tidy for x86
defconfig.  For aarch64 and arm, you'll see there are some unchecked
cases that look like low hanging fruit to fix.

It probably can be improved to note that there was no output, but that
will require more machinery to track how much output there was.  I'd
prefer to follow up with additional polish on top of this once this
lands.

>
> Then, I ran
>
> $ make CC=clang-10 clang-analyzer
>
> And I see a lot of warnings... I guess that is intended.
>
> There is a lot of:
>
> Suppressed XX warnings (XX in non-user code).
> Use -header-filter=.* to display errors from all non-system headers. Use -system-headers to display errors from system headers as well.
>
> To an outsider, it is unclear if that is intended or if the tool is broken
> in this setup.
>
> Is there are way to silent that meta-warning? Or is my setup broken?

See also my comment about disabling the clang-diagnostic-* analyzer
checks. We haven't had time to sort out the cause of them yet, and for
now they just look like noise.

>
> In summary, it is pretty clear how to run clang-tidy and clang-analyzer
> and it was a pretty smooth experience, even with no documentation at hand.
>
> It was fun for me. Keep up the good work!
>
> Just one issue... see below.
>
> > +    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
>
> You hardcoded here: clang-tidy
>
> But in my Ubuntu 18.04 setup, I got multiple versions of clang and
> clang-tidy installed; yeah, maybe my setup is broken, but maybe those from
> others are similar.
>
> When I run:
>
>   make CC=clang-10 clang-tidy
>
> it picks up the "wrong" clang-tidy version...
>
> My setup is:
>
> $ which clang-tidy
> /usr/bin/clang-tidy
>
> $ which clang-tidy-10
> /usr/bin/clang-tidy-10
>
> $ clang-tidy --version
> LLVM (http://llvm.org/):
>   LLVM version 6.0.0
>
>   Optimized build.
>   Default target: x86_64-pc-linux-gnu
>   Host CPU: znver1
>
> $ clang-tidy-10 --version
> LLVM (http://llvm.org/):
>   LLVM version 10.0.1
>
>   Optimized build.
>   Default target: x86_64-pc-linux-gnu
>   Host CPU: znver1
>
> When I run make CC=clang-10 clang-tidy, I would expect it to use
> clang-tidy-10, not clang-tidy. (clang-tidy errors just because it is too
> old; I guess it does have the linuxkernel-* options.)
>
> Now, I cannot fix that without touching your script. There is no way I can
> tell the build target to use clang-tidy-10.
>
> With a quick touch:
>
> -    p = subprocess.run(["clang-tidy", "-p", args.path, checks, entry["file"]],
> +    p = subprocess.run(["clang-tidy-10", "-p", args.path, checks, entry["file"]],
>
> I got it to work.
>
> Maybe you have a good idea how to get make clang-tidy to pick
> up the intended version without touching the python script itself?
>
> It is a minor issue, but it would be nice if that setting would work
> somehow.

Ah right, sorry, I tend to forget about the use case of having
multiple versions of clang installed.

I think the best approach here might be for the user (you, in this
case) to ensure that list of PATHs in the path list has the path to
the intended version of clang-tidy you'd like to run listed before
others.  That is similar to the recommendation for the LLVM=1 patch
set. ie.
commit a0d1c951ef08e ("kbuild: support LLVM=1 to switch the default
tools to Clang/LLVM")
specifically this part of the commit message:

> the suffixed versions in /usr/bin/ are symlinks to binaries in
> /usr/lib/llvm-#/bin/, so this can also be handled by PATH.

If `clang-tidy` on your system points to an old version of clang-tidy,
it may be worthwhile to uninstall the old version, and update the
symlink to point to a newer version.  That may be simpler than trying
to support invoking `make clang-tidy` for arbitrary versions or binary
names of clang-tidy.  I can understand having multiple versions of a
compiler installed for quickly checking compatibility (though these
days I prefer godbolt.org for that) or if a particular codebase is
stuck on an old version of a toolchain for whatever reason; but having
multiple versions of clang-tidy installed and supporting all of them
is a little harder to justify.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DV6-p1H1F65gFAQm%2Bh4Qgt_98-XJeUSNaONmPE9yZciA%40mail.gmail.com.
