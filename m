Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB6VRW6DQMGQEBBU6E4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A50D3C765F
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 20:18:36 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id q2-20020a056a000882b02903256c7471c7sf15896778pfj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 11:18:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626200315; cv=pass;
        d=google.com; s=arc-20160816;
        b=xHDwydBipajX010Mw3vmM3H4eKVpoKdprIX39SGamWSi3jhDUp/JNWzTmRTV0YS4v/
         zUo5lVzrL+Mlsl06I7iik8Ik27QhK/6NJe6/qgXkamj7DaLkZTx5EavZXGc1JE8ZJgVB
         N8vjseGYM+8YRshmbLfyDb+km/v/jUH1kAhQRECAKOaW7QLaaRf1jgSX66M/R6XYmcwj
         DCKNCCIhTFcdWnmyTNsibi8BHvklM/Jfpp1ozJDRdW60RxSCVwZLHdI8t8cqB+BuLauQ
         1zdewZBZvSAsuG5Qr8oRWY7+TyZT2+nQS3CpNQOQymObrt/HiiU/Byl2ZlWYnFXXfyvs
         syoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=gfAmZF+yJ/x+FseLacKK1vmLbVAdCp1zt4i7rQRErgg=;
        b=RYu3OLx268472yF44tiJk8vVUjWRh0sAIbFg3yf1Sw8G56TNFU05B3w/GtvFnLmtbQ
         ScEBt+hLIJcXMZm4Uh8KK2XeEWTef/Cz7JDiCIRM+ZGcPYMhcpj3vamIPR0XcwFRHDZ0
         q82BN97eL9UbzUbXgRxASYQbuzj8mobKD7irqdULUsYgD5qGMfmQ581Vn03tD6TtGzPe
         ixR9VB4Uowmj6oFS4Zv0TV7ilNAsvKmQG8DuiWzhvqAGmpWXIB9G5FCivU4Ckni61mxM
         AZYQbUqHiPHfTxvlkBql2BZaiUtOI1cICQ/lK3mYUhd5COSOtJqxO0DWyRD4/3kPNYOz
         8jPA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VLlJC+X0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gfAmZF+yJ/x+FseLacKK1vmLbVAdCp1zt4i7rQRErgg=;
        b=Olspod9wd8pXaCvMN87ghIGpqUlTNAvXWsfMW2Y7nwxZQWpcMVcv8bnd7nT+XVxs87
         IfXRQIgQp03WRhuwvwn6FUvAqCf6hWqsUphXqHJ6DZJgJhYsaTFwFmTAxF4j3ZKK2YvG
         bOHRcd19ytDE9F5NEgPM20R+Cuv0QUIcKovwZbgaSL5QGfvvIPWtIvNXxvJTqXM8KwnJ
         YjA01SBPqB6XgYnYzmXrQi1XggoQftApEngcKDlylpVyXZTgmJpEbAuErIDZn9ZRbPCP
         col3ukC74fofeYVM++JILfuGVXonsnrjQBsxepf+gyvOUdSDrl8iwP8jbBmtnzCAbq7+
         DnAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gfAmZF+yJ/x+FseLacKK1vmLbVAdCp1zt4i7rQRErgg=;
        b=phQh/ygtMOkdQnftJzqMp+b6/Ll3aKzp+3vZGBJeOjrrJu3V7fNys/ziLYSG9RMLde
         DRfBzPLA4HWSfkr+iWygL6xPe9h9Dg5B/iFfrYgGp0uJjuiT0JT2Ju4g+RVvWQ2X13U2
         EDuxJtjp8Jdc1sUT+Ye8tPHhT+Tcpqx7Php76o1eR7zEYzMau6j1SddAIASfyD/i8MIG
         zPilSxZyzn5ZzjHVZ5fycm8mUy4pKxMR/f975AsWLqvNMgHzWa1uaM/sOtKwb9/dL788
         2OKK2LRVBP8UqFSJcTqB4UHi7jw51xWk92AU8hAxyJQchzDqbjgmpokihNAgYbeNuseK
         DYEg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318M5k/Ng+tUqRNTGay/iBO5za59EHNma3dGlYT2OWeTG5sEl8n
	zaNB22n7A4ScH5jQL3MyhZI=
X-Google-Smtp-Source: ABdhPJxgPRtegYcUavDMvyZ+vQ2dSnY6SHaSP/KYzKDgwk1d/teQBJwYd+azX46BR5UJCvATtkosUQ==
X-Received: by 2002:a17:90a:bd04:: with SMTP id y4mr590057pjr.127.1626200315067;
        Tue, 13 Jul 2021 11:18:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c241:: with SMTP id d1ls448399pjx.1.canary-gmail;
 Tue, 13 Jul 2021 11:18:34 -0700 (PDT)
X-Received: by 2002:a17:90a:6607:: with SMTP id l7mr5466359pjj.220.1626200314511;
        Tue, 13 Jul 2021 11:18:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626200314; cv=none;
        d=google.com; s=arc-20160816;
        b=dNt7Wp8b+6BVLgf61IrwtoPU+PutQs/I/crTA3sRvdMw4vjm5HKz9GnjPAPWXeyWuj
         ZIJ112YUwgBYxhHI/5UQqSHaQzwvxPyvKwtXktV7CRX+rsHbIaYkY6gr0uDWEKo3m2yA
         SiL1GXxupiIYLKOtNseM4o3SgzSazz6kOZgf/LgnBHSKiCTb6jTnKGPvIgEu1QImXutn
         i8lHhU8FE1H3MY2sJsBhgLUSG4/M4+q723SwYcmYnS/PzzmPrvqvDdO/YJ/PjXernEBw
         E3sA/ti3EeWobYJc6TfrpMeww+mS3oTrOL3mo3AWCgbNLpkFTYypfyBj7WZKKAaKgq7f
         NE1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=4b/INLOhMJo9iD03gkFeW19LwvSKHyFRt87TUjp5PyM=;
        b=e2p6ca+GgGNrVdSc+lsAJuuSBJLTKXXiEtH6DiNvjPgmr5/Z1HzIBfrgNkLF+XKThe
         t2p7JpU3n7mxoFVwuT12g5EYM4CN8RDW9wGtA7TqQ/QxelzzHn2D97E/tw2jW3AcV3hE
         5LDuH7H9j578MWhxZMhV8S24xFKFGyBHCi3TJGnvUhCDVoXI5WTXKX1W+OZca5nE3tqf
         gzByTnSUFELcn/Z6o3NO62mDdNTmZf53O5koCoWxDiBKbTQC6qsD0GxU/jg3/2UDvin9
         J46lJg8L7mrlZ98Q35eEsKs7YVHrxugiYIeBfI134v6PVXZSsomM18Lp6fNhoOhdnFTE
         1BQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=VLlJC+X0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id lp13si352065pjb.0.2021.07.13.11.18.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 11:18:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5659B6136D;
	Tue, 13 Jul 2021 18:18:33 +0000 (UTC)
Date: Tue, 13 Jul 2021 11:18:30 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>
Subject: Re: -Wimplicit-fallthrough in -next
Message-ID: <YO3Y9huc+xMvSB2w@archlinux-ax161>
References: <CAEVzpNmJfWQrqaytnA19Vw8NSytS=3SWEBKF6qP6e2YeBXCKfg@mail.gmail.com>
 <91ca3e43-9fe1-ddc0-ac65-bd09950fb39a@embeddedor.com>
 <YO3FQgHxfIl4zR3m@archlinux-ax161>
 <3338acfc-3151-1169-fe2e-3e79002fc3b8@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <3338acfc-3151-1169-fe2e-3e79002fc3b8@embeddedor.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=VLlJC+X0;       spf=pass
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

On Tue, Jul 13, 2021 at 01:04:12PM -0500, Gustavo A. R. Silva wrote:
> 
> 
> On 7/13/21 11:54, Nathan Chancellor wrote:
> > On Tue, Jul 13, 2021 at 11:17:01AM -0500, Gustavo A. R. Silva wrote:
> >> Hi!
> >>
> >> On 7/13/21 11:03, Nathan Chancellor wrote:
> >>> Hi Gustavo,
> >>>
> >>> Apologies for the HTML email, as I am mobile for a few days but I wanted to
> >>> make sure you see this.
> >>>
> >>> Looks like -Wimplicit-fallthrough is turned on in -next, thank you for all
> >>> the work you have put into it! Unfortunately, it looks like this breaks a
> >>> few builds due to -Werror and there are still a few warnings lingering in
> >>> architecture specific drivers. Would you mind taking a look? They can be
> >>> viewed at the link below.
> >>>
> >>> https://github.com/ClangBuiltLinux/continuous-integration2/actions/runs/1026443499
> >>
> >> I only see reports in this form:
> >>
> >> ARCH=mips LLVM=1 LLVM_VERSION=13 malta_defconfig+CONFIG_BLK_DEV_INITRD=y
> >> unannotated fall-through between switch labels [-Werror,-Wimplicit-fallthrough]
> >>
> >> Is it possible to see the file and line of code that triggers the warnings?
> >> That'd be really helpful. :)
> > 
> > Yes! If you click on the link right above the warning text in that view,
> > you should either see the errors right away or click on the "boot test"
> > item and the warnings should be highlighted in yellow.
> > 
> > Ler me know if there are any issues.
> 
> I still don't see any files or lines of code...
> 
> All I see is:
> 
> Set up job
> ...
> Boot test
> ...
> 
> Do you see any line of code on your side?

Click in the "Boot test" and the view should expand. The warnings will
be at the bottom and should be highlighted in yellow. If you want a more
plain view, search for "build.log", which should find the TuxSuite log
link, which is plain text.

Hopefully that helps!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YO3Y9huc%2BxMvSB2w%40archlinux-ax161.
