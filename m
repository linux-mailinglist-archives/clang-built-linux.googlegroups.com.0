Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBM4T5PVAKGQEGZMM5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id E982394979
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 18:09:23 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id k8sf4356890wrx.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 09:09:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566230963; cv=pass;
        d=google.com; s=arc-20160816;
        b=nU5GPBWt0Pt8ha3Z8mr/lwrCD9QQ9ScpsfWAedgQatG2iJJSEFC6Fc5LhGjytpB9YD
         fHW+ej/ta0KG/aHcLBjMjdDUiHrcgzmVtmlM6Z7UK7f+WayNlV1tBX6GtJeFa8oUp8vh
         EpkxU8ETK9ema+4jXm7jgQAb2MVbwmECNmmGSyIS91fUhPe9tgyCT5vqosZYcsYhwmPU
         G2h2jEUtfPXMPu3io20TIxORSAlkyIMSRmKtbiQ6/MGGaKPZ6lTZexOsTlfhjv/Ahsas
         TZ+VENRnkc96PlKA/L/Urb6newCnYlF9ZPp1gVFAyxTCIYMn9RndWDiD00a1aG2WRhev
         M1Yg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=aMWlf3sBGSs1J/3H5L/QC3XHuvgKnQRiw2v3f22AJdo=;
        b=loGqi2wh2V9VAcOCRhaH5QFRwgggbA0SKfmAJEKN78x5+qct11Vo3yQiqCIeNV3pO7
         2sgnAZZezR8LoKsa9t9v3ZquO0OHD0xOFxYpapqhnpcQySE2ADA9j9S8aopT04Ki+hIL
         eZvi9J8VGeoLyyQ1sjkc4Uh5/ZmZF1fMKcsdivOU0KTlGcrultjuojtZJb8NDa/TDb1Q
         GdrLtKjofkMbabRuzEKQmjQqdf3Wuo7GsDNXYld62JHSa1MznqWP4YHPWYV2QZn7+xCZ
         /xg3YMNemNBpYrLIi8KxgID3AD25ZZHdlNjlZzeWHaYb6SsPdZp6nbNYYNW7BqYJdNPX
         Vf5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QKpuUher;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aMWlf3sBGSs1J/3H5L/QC3XHuvgKnQRiw2v3f22AJdo=;
        b=VOaXcctsZ7fzvfUaROOebUqZpJ3TlZDOskp1YueOD4ShYvO/4CTs4V3bH2+FUJ9+lo
         27RMsSxubSF2nAnLyNsspPpTVpAls1zCe2HSNKrD8J3g3ypb/EX165a9TQTyeBiGMyvW
         hlDcMOREe5w2w60qtAeLYtCM/IuujPUfysZw7MaGl3bZfGDfTZ7DoS2ZY8P4DcCbg3ti
         ejmjqz5KBc2KpT6oeF8TdqSJlOcercFShLJFhtxGCzs4N7HgtF/CJvWVhkQP+ucdtZnO
         B25yMAoQ3h5p4JNMy6d3bNbW6OR/R0/3lFgW4AIIP5y40wZVfqkert+W0CqFUMV/81NK
         fw5g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aMWlf3sBGSs1J/3H5L/QC3XHuvgKnQRiw2v3f22AJdo=;
        b=e1pNhAtwNr9dGzYjX0VzfnSUbxWkjYP/lfnNo74Ti4R7WXGXMc1ucVHL3TwSK2FRV7
         L61Cmrn3jlXO8a2F5AjZ8z50YC+3+ElsOYovRoTJY/rKcPGL3lHUWUftJKliRMqgqto6
         b6CTbxihxvaHKw4vxn2NMfxV8+fB9krTHLLABPLW7EabSGOw9VxHFAmda+aa6+p81uXa
         fEJpAw6bIvicJXQQ/6SWDwPUUmQkQzHiJjx7rBnj04IMrrSEIBEKwOjKMibqfwYPp0kS
         uuqTy63sh1jkQ5UHIGwtFfp1no9XEeLNM8Vs8jrd/y+Us3HlOs8BxutuBOLvj38vjHiS
         x4nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aMWlf3sBGSs1J/3H5L/QC3XHuvgKnQRiw2v3f22AJdo=;
        b=HHThkMu0n1Mw47UD08pdQzcjHs+Kse7NcvN7pv1ezpsym/J7FaXcWSO6IfLm+wvFld
         sQ49yBvb+713K3jpccFxqdtXwev+Dy9FY0vO53hzzy/OySgcORllDuJKfzqXz7lDg24+
         o5zT1LTKUdykE0unNYbAd51aHjrss99zCd9XtrJU2sZvvCXXsix6wTvHWjLaG1W6cgjf
         itJJER9qQgYZU5r6YUU7qNqrdoPQr5XysLNsmh6IDLiw2UGZyBY5oQL5b75zQFftk21P
         eAp/m1kalkJqmCQTugajk5p60HRXIPU7VMO45iDTL+yOvXrC/o6wYJuqzPieWE3lGlmd
         m9yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVnHViAf1erP2GDCCkdJxKXB0s1PkPvFr14Ya4MH8EKKrEy5qHO
	ZSKzuEe2HNj7fNcs0BYue58=
X-Google-Smtp-Source: APXvYqwUGeRFgmqXs0d+yi1mxbN6/Z71FV3LtEJZL/VBohEbS4AA9PsaFxgjjIsipHGiDVgAZhnruQ==
X-Received: by 2002:a5d:4083:: with SMTP id o3mr15766442wrp.150.1566230963652;
        Mon, 19 Aug 2019 09:09:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:cc01:: with SMTP id f1ls10616wmh.4.canary-gmail; Mon, 19
 Aug 2019 09:09:23 -0700 (PDT)
X-Received: by 2002:a05:600c:204:: with SMTP id 4mr22564424wmi.167.1566230963061;
        Mon, 19 Aug 2019 09:09:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566230963; cv=none;
        d=google.com; s=arc-20160816;
        b=FpuXKDVSxQxzJ1aZyrZipcbhoFC3FRj1XkW3Gxnb7PQuRetroi8x39kVAktZ+BgnES
         LvwTo/LkSrx8vNfh7+u1IdhoBli9XN9nBCRF6ju+eaaaEhjwFcw6K4p/DEv8d3xXdcIQ
         +21a5MJGSUuYs4MV0Uuu7Mh/vzPWWrAPvs+qcM7rqupJ7LLFZrpD6VNcd6kVorzLVYdf
         DVeqFeVfeT4FjfebBkmQbzVFmvmEU12jTk/XOh7wxhKNMOeJRasFW2Rx0tixPLX7PAGF
         E8gBAv1Q3eG953h/C62f5uRR0RBpMZigxJzbKah6rJzIe++FTmbuZ2uLN2u1X5cA4Bjz
         WEjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jopRZr5rirHRrOwX/83i4Za+nhdtinIu3t3rEz9kHGI=;
        b=G4CtHtT4xey56ecM66jcpzQyoC+hcS09rl1xC6Kqs5HHFGsZUkotw2CT2P+xxsi7rr
         ZIYLzNDIwfqDrj+Wh7ABM7JCNeN7pg8WMCGsNS0HscemB7GKgas++QZCVtQm9z8Cr8Hm
         vvIz3/PMkfVNEvU4lU1/+jonOL8JSOFy21zqGW38GakLjz2FG2VP+gaP6PoroEy42Kdl
         c2iPa+yK5sKZLIEeDEciscrKxTxG4tIMJ/DFn66jRiWnGTZsr9zPok2UvxCo0bv2pbDm
         PMyMLfcoM3rPkH3QAnsWyUR9fd8Oe2baABRAulPvGhObPp31fMzNkg0P+YbvIRJaaRxB
         QzAw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QKpuUher;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id p4si504716wme.2.2019.08.19.09.09.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 09:09:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Received: by mail-wr1-x443.google.com with SMTP id g17so9320711wrr.5
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 09:09:23 -0700 (PDT)
X-Received: by 2002:adf:ce04:: with SMTP id p4mr29018938wrn.227.1566230962458;
        Mon, 19 Aug 2019 09:09:22 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id 39sm50025159wrc.45.2019.08.19.09.09.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 09:09:21 -0700 (PDT)
Date: Mon, 19 Aug 2019 09:09:20 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: linux-kbuild@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Borislav Petkov <bp@suse.de>, Kees Cook <keescook@chromium.org>,
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
	Michal Marek <michal.lkml@markovi.net>,
	Paul Burton <paul.burton@mips.com>,
	Xiaozhou Liu <liuxiaozhou@bytedance.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] kbuild: enable unused-function warnings for W= build
 with Clang
Message-ID: <20190819160920.GA108942@archlinux-threadripper>
References: <20190819105138.5053-1-yamada.masahiro@socionext.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190819105138.5053-1-yamada.masahiro@socionext.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QKpuUher;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Mon, Aug 19, 2019 at 07:51:38PM +0900, Masahiro Yamada wrote:
> GCC and Clang have different policy for -Wunused-function; GCC does
> not report unused-function warnings at all for the functions marked
> as 'static inline'. Clang does report unused-function warnings if they
> are defined in source files instead of headers.
> 
> We could use Clang for detecting unused functions, but it has been
> suppressed since commit abb2ea7dfd82 ("compiler, clang: suppress
> warning for unused static inline functions").
> 
> So, we never notice left-over code if functions in .c files are
> marked as inline.
> 
> Let's remove __maybe_unused from the inline macro. As always, it is
> not a good idea to sprinkle warnings for the normal build. So, these
> warnings will be shown for the W= build.
> 
> If you contribute to code clean-up, please run "make CC=clang W=1"
> and check -Wunused-function warnings. You will find lots of unused
> functions.
> 
> Some of them are false-positives because the call-sites are disabled
> by #ifdef. I do not like to abuse the inline keyword for suppressing
> unused-function warnings because it might affect the compiler's
> optimization. When I need to fix unused-functions warnings, I prefer
> adding #ifdef or __maybe_unused to function definitions.
> 
> Signed-off-by: Masahiro Yamada <yamada.masahiro@socionext.com>

So if I understand everything correctly, this change allows us to start
finding unused static inline functions with clang at W=1 but disables
-Wunused-function by default... I am not sure that is a good tradeoff
as I am pretty sure that W=1 is fairly noisy for clang although I
haven't checked lately. I'd argue most regular developers do not build
with W=1 meaning -Wunused-function generally will not be run with clang
at all, missing stuff like this:

https://lore.kernel.org/lkml/20190523010235.GA105588@archlinux-epyc/

https://lore.kernel.org/lkml/1558574945-19275-1-git-send-email-skomatineni@nvidia.com/

Furthermore, per the documemtation [1], -Wno-unused-function will also
disable -Wunneeded-internal-declaration, which can help find bugs like
commit 8289c4b6f2e5 ("platform/x86: mlx-platform: Properly use
mlxplat_mlxcpld_msn201x_items").

[1]: https://clang.llvm.org/docs/DiagnosticsReference.html#wunused-function

Is there a way to conditionally remove __maybe_unused from the inline
defintion so that we keep the current behavior but we can still
selectively find potentially unused functions?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190819160920.GA108942%40archlinux-threadripper.
