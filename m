Return-Path: <clang-built-linux+bncBCIO53XE7YHBBTMH4L6AKGQEXDZ35MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id C9FC929CA36
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 21:32:14 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id p6sf1312582ooo.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 13:32:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603830733; cv=pass;
        d=google.com; s=arc-20160816;
        b=MBDDz44/vG1qlGkMk9n63r+FBfNBnULnPt6OzokSm0HtyVi8rph/KHD7wvedsySeI6
         mwquT8+qr0LSiwgkyyLQcb0WYdyNw9l8uRaJPTY/ThOriANSPeDXQcD+f6dU75UDJO02
         jLCou4MBpWz/DcA0MSLPZx0nZ63VYZfeKaRreMQw7Vtjw+0VngigAqKxmYMTGM0gAoJO
         A3uNy3MMBJUzlmpgpyxd/QR2o8VdQdgn8K1I/rwZx6iK8bnAhGN0W1xcmBxG83+bEs1r
         gFqd0JOJVEOy7aIVOpjikvMDZYINAS80IQlF61l4if+t/OlXZrV6RE5PntFnV12Y2JYE
         AoAw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=LP11ynLBcKmSmKAt7GLUvIvXtcBg8jzTMGUJk2UyuT4=;
        b=Ut0VUtYQlIW+4qVKr3ueemXLCZn/gXBqP6aJkSS7FHc2lDBuDaaBGBcDdiVCedCJPH
         REKDHGGb4yZWvGfa7H0KcNaqYiwCIkMZ2TWqLPU1LuY36ApfU0mPiswHaXa4qJ8LGwz6
         Dfl7Ra06rxIFgWDwMa1XhYzzUuSHf8KYV/521e8ewum1ksPDOOnOlR6yKmK5MnJhiE5R
         X8vfNAbrlvLySOZEyW0g5W8iKa5SdxZXqqhd8RLrIeyQDv13IoijJQSgnpXODONTR1Q/
         7KMa4rhZINAhOQrJ8Zg3+SPS5Rng2T859wG7dL+1FfcMYATR4zcGGdZxCrkB8hcrD9mc
         Vj7w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVEua1Jx;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LP11ynLBcKmSmKAt7GLUvIvXtcBg8jzTMGUJk2UyuT4=;
        b=vJNlN00Mu7IupxJuAPwssPjR+3ovHEw2tgAUapf+cBUFy6qXVLhzH7Ufs4M5EH9E+D
         0Oj1kcV/vXEBmvgy48rPRJLOix1pdkkdSJ2m1edrgoy3Ys2JNLGlnzeMtnP+E9i7q4z0
         3dF+k5dUKNnR1DzDxG8Qbss3/8YEQXags78MbBn56tkPdO8xoulyMCT4UyosjJaLNPgm
         DPg+7799Mhga9lNtGi2+ab6Rh+rSXlr+fxJS21SV/PwuPC8OG5GuMWVOwOgq3I3we3+z
         3rEgBc5neZew7pm13xctUy3j6HKksxBwPWzxngDDw+Boyp+TBM0QgGXnpowO3p2V3LHM
         ijug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LP11ynLBcKmSmKAt7GLUvIvXtcBg8jzTMGUJk2UyuT4=;
        b=PureBxCsEMsZkL0fRfPEscNN+uCqkpszvX+u25hNSLeFagqBCyJ2vIhxnoIts5oE5j
         5i9qfPu2rlHC5pgWFqWQovAUE26wNQiLu9i89XR1YewX3lm6W9qsFbxhsybTiW3d3ANe
         LCMQJxZRFGnHp2X+CtlKDuSmrHKCQWmeMj9IDoagMPlzBSn4cXbKkxaGzDhIwmZiNcJK
         dO4AzFyam5jYHXZBXBdIzJBX6U6qF1wbvJWju22lnHxdce4XJkyy6X0QqA+Vo0RdQhXW
         gu6BWRJF21vfyU6k0UYzVnt1wgyFM+y0GnfzH1lq7cMeN0nlYIjQxwCtPM/eXi2wTukh
         qvCw==
X-Gm-Message-State: AOAM530aVOfOx9NlehuRiQoLt5aqYTcpxRSnbHbxwvJLuPd/liJkigyZ
	FLknyh4XLHqVPEK3ZT72U9s=
X-Google-Smtp-Source: ABdhPJy1D1ry4VR1OsdEOgQ/cPYHOIbv1agOMtR8YalbTIKy4+slevRdtUqX4wbyQHfsNgnZnGZjHQ==
X-Received: by 2002:aca:3343:: with SMTP id z64mr2891255oiz.45.1603830733788;
        Tue, 27 Oct 2020 13:32:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:a843:: with SMTP id r64ls777752oie.2.gmail; Tue, 27 Oct
 2020 13:32:13 -0700 (PDT)
X-Received: by 2002:aca:1c16:: with SMTP id c22mr2885645oic.121.1603830733465;
        Tue, 27 Oct 2020 13:32:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603830733; cv=none;
        d=google.com; s=arc-20160816;
        b=r8tbX7PVGNkcXcvmDk6JsOzpSWm56fKGWQ+tY+Brqnas/7Co2rdOGgEmqJJjWgqFbg
         AgTFxNddODH/2DP4mrxJw3kZYb0wu1XVONmrGz5I4Mk9kPSugLzP359R23SGZywaWhLF
         rAmS2cLfMdFDx1GRWAEHmJqsh83AwO/yx8VRzAVqtSYtp/84lh39QBWPq7TOzPwl2Mlg
         e4CpjJtSUCXwMzTieCjdosuW77KFhqRxZQbsPqEVH5PhkFnQnn7nmE08IFI5w2jz2z+n
         qtbEcIQdsJvRzVtATom+NmspxcftDDMR7VgkeF4/Z2Yhms4pP5QQP9iJu7r6VEP+IfBS
         FykQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=03p941z578kZgGjWkKdr5ZhhMq4DqEXigALvalpK2/k=;
        b=NR7rzNxeoOjY1IabG/aknxHCzMDkE/THY6J2BI11eTTpeDgyZUXPIVhhevR2DsR+jw
         0j/FCoYWG2UfX8pv+550vz94B1vB1SxVNEBTaRimEXkb+XYsgqTu/0+dNhw+JRpPXJmm
         FXm8oMN0jHcXQuLhe63BbeTEhXkP+hv99srcGG0pYhaAvyAnzq+ir/tCOc4OF/WMxcDx
         thfBgq2OtzqpTA/WkClfcPJJLWBJeFTjU2u5uwM+1pjXzpxbdA+YnTMAE6JDi3ariiZE
         fnXuYDEgTZbfbTIHlf1koZzEysZ8caK3NZCtVZLNK9Qr3Q2goXtj52z4l6+qVYW39fM4
         xC/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dVEua1Jx;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com. [2607:f8b0:4864:20::843])
        by gmr-mx.google.com with ESMTPS id m127si287540oig.2.2020.10.27.13.32.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 13:32:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843 as permitted sender) client-ip=2607:f8b0:4864:20::843;
Received: by mail-qt1-x843.google.com with SMTP id r8so2038336qtp.13
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 13:32:13 -0700 (PDT)
X-Received: by 2002:aed:3905:: with SMTP id l5mr4181349qte.366.1603830732959;
        Tue, 27 Oct 2020 13:32:12 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id f21sm1583470qtx.68.2020.10.27.13.32.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 13:32:12 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Tue, 27 Oct 2020 16:32:10 -0400
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Kees Cook <keescook@chromium.org>, Ingo Molnar <mingo@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	the arch/x86 maintainers <x86@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux-Arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	linux-toolchains@vger.kernel.org
Subject: Re: [PATCH v6 13/29] arm64/build: Assert for unwanted sections
Message-ID: <20201027203210.GB1833548@rani.riverdale.lan>
References: <CAMuHMdUg0WJHEcq6to0-eODpXPOywLot6UD2=GFHpzoj_hCoBQ@mail.gmail.com>
 <CAMuHMdUw9KwC=EVB60yjg7mA7Fg-efOiKE7577p+uEdGJVS2OQ@mail.gmail.com>
 <CAMuHMdUJFEt3LxWHk73AsLDGhjzBvJGAML76UAxeGzb4zOf96w@mail.gmail.com>
 <CAMj1kXHXk3BX6mz6X_03sj_pSLj9Ck-=1S57tV3__N9JQOcDEw@mail.gmail.com>
 <CAMuHMdV4jKccjKkoj38EFC-5yN99pBvthFyrX81EG4GpassZwA@mail.gmail.com>
 <CAKwvOdkq3ZwW+FEui1Wtj_dWBevi0Mrt4fHa4oiMZTUZKOMi3g@mail.gmail.com>
 <CAMuHMdUDOzJbzf=0jom9dnSzkC+dkMdkyY_BOBMAivbJfF+Gmg@mail.gmail.com>
 <CAKwvOdkE=ViGOhvoBRcV=9anjowC_vb4Vtefp9010+sC4c_+Sw@mail.gmail.com>
 <CAMj1kXEhcQ_ngNVWddV76NqEz6d0tDhfStYGd5diydefzVLvdQ@mail.gmail.com>
 <CAKwvOdm9kuKoVnQoVo7T91gRb9QiCTp2G_PnwbdPM=o710Lx5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdm9kuKoVnQoVo7T91gRb9QiCTp2G_PnwbdPM=o710Lx5A@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=dVEua1Jx;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::843
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Tue, Oct 27, 2020 at 01:28:02PM -0700, Nick Desaulniers wrote:
> > commit 3193c0836f203a91bef96d88c64cccf0be090d9c
> > Author: Josh Poimboeuf <jpoimboe@redhat.com>
> > Date:   Wed Jul 17 20:36:45 2019 -0500
> >
> >     bpf: Disable GCC -fgcse optimization for ___bpf_prog_run()
> >
> > has
> >
> > Fixes: e55a73251da3 ("bpf: Fix ORC unwinding in non-JIT BPF code")
> >
> > and mentions objtool and CONFIG_RETPOLINE.
> 
> Thanks for the context.  It might be time to revisit the above commit.
> If I revert it (small conflict that's easy to fixup),
> kernel/bpf/core.o builds cleanly with defconfig+GCC-9.3, so maybe
> obtool did get smart enough to handle that case?  Probably regresses
> the performance of that main dispatch loop for BPF, but not sure what
> folks are expecting when retpolines are enabled.
> -- 
> Thanks,
> ~Nick Desaulniers

The objtool issue was with RETPOLINE disabled.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201027203210.GB1833548%40rani.riverdale.lan.
