Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBHVUZP3QKGQEHIKWX2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C1A0206B56
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 06:44:15 +0200 (CEST)
Received: by mail-oi1-x23f.google.com with SMTP id e6sf762357oib.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jun 2020 21:44:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592973854; cv=pass;
        d=google.com; s=arc-20160816;
        b=mYeHfUl5+z4aL/bmtTT4XyHHOHHmOiQ6bnc/aZl0qENQtKvEmKJ4jYaF88dGTeR1HF
         q4zEjd0T1claBeSpXIXdtE9tzjBzmgIeT/pEEX6IVsDAJemdRqRi6xbQjHlA/FK/xEMr
         9chaPeeGrF5361ty3FMKG0BavTroxLbTfL7A+prMOVDDxEc7aKZj1P5HFVsYuBZ7vfIJ
         9sAodlhfLPrQO1eOyGuO1YcmRvxWwRmYDneuISDyav3srGASX6N8AbOisTxpwU3ITAoX
         d2UEJpAEAbO6qTGwFkLp3A8bBS8ndcavgukgAqCy8jW05g+hi/20Mj7JIuBGWE5AHFZ/
         c8UQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=QpnR1tZTzc0RV6ZeRQCUdZah1eQ+3v2e5V8eZBU5OC0=;
        b=cSjM37szUEeEEXTZCDQXUZB7J+SX0DgjOc5zcX7XupsotjPkpiK+p7sMn5+5jwBdpR
         C0jtTdc84pRP/ghCWs3HRccKTlqpb3EZ9UQmcOOpkXZ4myK2sB7jEotI4+7VquC3Zat6
         X8Prmwxm+nxzX5JiWBYfgkD6ak+yBgIFsDlV8EpabrX0aztt8JFboZv8ZDotlmHMA367
         ZEo9MsQuB7+xw/6GiYHQL0Di0GFCnp3+EHCzHbKGgow6MKQwn1+FYc1UqgjKmkHoBN0I
         PAUllDnsYqwO+9Kkna0BYaxFpKcGmvC/Pujf4Kj3fVINJmSiSvPX7L7mNT3I0UW39PL9
         Dedg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=foHqhRb7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=QpnR1tZTzc0RV6ZeRQCUdZah1eQ+3v2e5V8eZBU5OC0=;
        b=qGwON9pqAjLwf+9KIsxLTztVMlgaMscb5VTEP47KirloRtWOph2hM19TGSOdA/vpkn
         N4BgsneQOhR/qcE8kQTosubvVI8Ssov2SewIzyqKsVRCC1NGrGmSAulWMFmg/QFbmdcz
         JX1vl5kEmT9CCvwqFwQzhWBMZyBit+KPRrGtj7VvjbBf0JP5apoWxtj5sgFuwQ0CCjlW
         JusMEtYT3tEproU4k3YzFhJcnFEaYP3SzmxEK8Ooi4ScUHYgxd36YesBLbXMHE2aReCO
         BrwtiXtV6MzbSozJnYGqkxNNQBjjmzZTb8B+2ml6wUJVutB686P1VWC0k7hMjGif7UHK
         pigQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=QpnR1tZTzc0RV6ZeRQCUdZah1eQ+3v2e5V8eZBU5OC0=;
        b=tQPLu4FCpbqOtf9nH2Suba10T/+UE49k4Y1hTws1vqYjaD2Lmlqy7INvwN1ResKpeZ
         0/VcUSqGs7+ULWL/RUFymYNjI5sjfKVulPI1sNKz3sLiZDHwSCAtMvqxdDEDZrICEdJd
         9m6gtIffDz2CTylS7uoSJw9xRgaSU6KHniSPJB89feXK5XDePrmkqqHnbnxQ9IZDTYdx
         aQwJSUeUp0na0d4AHNYi06VQgUBM9jWHWHrGqimb3mJfgaxZE68MismWGZqVgGRuBK6S
         /lZRFiNjpXqKmKM9Vqa8duUyOuRY4muH1dfCT8c22jVQeJ6yk4hd3e91KmkF/v47NsF4
         4IHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5324/u7tnRVBhdBS/Go7T+aXrNbshTtYdKmX3SqPQLA6zihADB8i
	4qbUkJXnC9p0QltpFzpcipA=
X-Google-Smtp-Source: ABdhPJw5oHUdv/4w7eCtr9Ax5gFM3LNLKmQ05quDO+MFrYcXNlDnBPK2IQ2QprBSP6ebPhrbvMDiXA==
X-Received: by 2002:a9d:1c7:: with SMTP id e65mr4974015ote.147.1592973854339;
        Tue, 23 Jun 2020 21:44:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1db7:: with SMTP id z23ls192658oti.9.gmail; Tue, 23
 Jun 2020 21:44:13 -0700 (PDT)
X-Received: by 2002:a05:6830:2112:: with SMTP id i18mr5815474otc.311.1592973853906;
        Tue, 23 Jun 2020 21:44:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592973853; cv=none;
        d=google.com; s=arc-20160816;
        b=gq9yT3ugiLpaN5fIVwubnuMaA9vB6C+tH8u2o99vy9AIiYlRefQZZx7jPt2DTC5YkW
         c01YaKk4SYkocgJQJQDRxcm9XFUmuhc4JRwUTIKdAe8h7Lec5nrJqpJGPKvGNlFnT/BY
         VAFlCupGw+5fYnpS8lkuxKOk+UIuD7VRdIbPmLUk5YqL7T09Y3mODhG/+MypZPAm4on2
         jdvJBBNdauRJf7Vc/bwGNpaVUvC5VlPnMrk7K+hhMRo5FLj0AgadqZuTCi12fYFa01nO
         T4xUz30/vgd4wXajus+19fVXqPWJ3iHB+accQ43BQgawZbajhHjRZDl65ZvdI5N3i64B
         pEUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Yc7m6q+AETZbQf/A/NW3gp84TMebMUYFiYcSc962UaI=;
        b=JYvl/dA+I3YFTGAEBe6IzhGQTDRhaxKUpBQANQVdeDHXJ6zw7D83drCgmCOaCap6zf
         BCE1b4PGortNnReqNu4hcuMw07DbxGihq3AADE8EZxBIGUfB4v8AMsu+pcqmO0AxwTmo
         Arq03Dib4o5XVA/piVNGgAIL/Cclsp7BupR3UaqLWt+GRXPGkRfi2HIODnIkfGRHXs4K
         ozrJZH4yvGtpMZ+VoIQsXux65Xkz08mmmBPbkzNQAsm8cJxHB8N0DWgQPDn7/f+Bog9o
         /to/+5OCw0NSaNtZ8iq5TZfokQDQvNEUMcMWtW1QhyaoGuYOUTM4K6Bm+m2IDjpT/IAO
         KNzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=foHqhRb7;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id l9si1043860oig.0.2020.06.23.21.44.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Jun 2020 21:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id ga6so622964pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jun 2020 21:44:13 -0700 (PDT)
X-Received: by 2002:a17:90b:a02:: with SMTP id gg2mr6864076pjb.110.1592973853293;
        Tue, 23 Jun 2020 21:44:13 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c7sm3578791pfj.106.2020.06.23.21.44.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jun 2020 21:44:12 -0700 (PDT)
Date: Tue, 23 Jun 2020 21:44:11 -0700
From: Kees Cook <keescook@chromium.org>
To: Fangrui Song <maskray@google.com>
Cc: Will Deacon <will@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>, Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>, x86@kernel.org,
	clang-built-linux@googlegroups.com, linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <202006232143.66828CD3@keescook>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624033142.cinvg6rbg252j46d@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=foHqhRb7;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1044
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Tue, Jun 23, 2020 at 08:31:42PM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> On 2020-06-23, Kees Cook wrote:
> > In preparation for adding --orphan-handling=warn to more architectures,
> > make sure unwanted sections don't end up appearing under the .init
> > section prefix that libstub adds to itself during objcopy.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> > drivers/firmware/efi/libstub/Makefile | 3 +++
> > 1 file changed, 3 insertions(+)
> > 
> > diff --git a/drivers/firmware/efi/libstub/Makefile b/drivers/firmware/efi/libstub/Makefile
> > index 75daaf20374e..9d2d2e784bca 100644
> > --- a/drivers/firmware/efi/libstub/Makefile
> > +++ b/drivers/firmware/efi/libstub/Makefile
> > @@ -66,6 +66,9 @@ lib-$(CONFIG_X86)		+= x86-stub.o
> > CFLAGS_arm32-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
> > CFLAGS_arm64-stub.o		:= -DTEXT_OFFSET=$(TEXT_OFFSET)
> > 
> > +# Remove unwanted sections first.
> > +STUBCOPY_FLAGS-y		+= --remove-section=.note.gnu.property
> > +
> > #
> > # For x86, bootloaders like systemd-boot or grub-efi do not zero-initialize the
> > # .bss section, so the .bss section of the EFI stub needs to be included in the
> 
> arch/arm64/Kconfig enables ARM64_PTR_AUTH by default. When the config is on
> 
> ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
> else
> branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> endif
> 
> This option creates .note.gnu.property:
> 
> % readelf -n drivers/firmware/efi/libstub/efi-stub.o
> 
> Displaying notes found in: .note.gnu.property
>   Owner                Data size        Description
>   GNU                  0x00000010       NT_GNU_PROPERTY_TYPE_0
>       Properties: AArch64 feature: PAC
> 
> If .note.gnu.property is not desired in drivers/firmware/efi/libstub, specifying
> -mbranch-protection=none can override -mbranch-protection=pac-ret+leaf

We want to keep the branch protection enabled. But since it's not a
"regular" ELF, we don't need to keep the property that identifies the
feature.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006232143.66828CD3%40keescook.
