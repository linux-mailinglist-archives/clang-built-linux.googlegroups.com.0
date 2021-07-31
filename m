Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB6XYSKEAMGQEXBN27FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FCE33DC2CC
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 04:59:08 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id o13-20020a17090a9f8db0290176ab79fd33sf12914580pjp.5
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 19:59:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627700347; cv=pass;
        d=google.com; s=arc-20160816;
        b=bFINfCtBv53U5uAEOTQG+OAc1Y0LOCk3flCQlVphHwWQJhd0jOV+v+Uaj6KvACfWiS
         w/WI2vWu2DHWmfHQQBQknJDYeq8ZHwNze+WAmg/NSWqqcg8CO0r3YxqW03ignn0bzWcG
         kERSIpCz/ed9W3qFT8olO8Fk5l2Z90Ufu2MibyzawDn69T3nW7Igrlx6gz+9uZjpxnBc
         JVMPM3VdRVcKFUaDM9X1bHI0gd4WWq7w9jtBUZtv+Y0zsf9nX3DYOESjFVFTJTh3lEGR
         Ldncl3L21lXNjl3Ltz9kiNBZhMAr0JynIr95CiBNmYypmIB17ra8gQPuRnh/A/GgXdhd
         CUTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jnHtydwZDYR+B6IjgAGFx/Ex2TFlqyplQOcbukarG3Y=;
        b=ycb5ciiK7PvmB0i8yOB5+96X7/WW81a/CQ20e9IQTincwxFHyyLfJaaL9CSQFkK5Xn
         lDpKZ4J5ulHfAZnBYEqZUOo+eAmvqJq64dbmWy3u96KtK3FAx/olrl5uFA7+JQr/q50w
         C42HKcKUj13PFwaZzTugIvH08Xd7HBiL5r4yUnShXq73VZk/hC7R2QfrHVswry6oS/dW
         sL2FOVuqI671X2Lskj4Hr1WVzHULkndo0CTQMdsQ7LeSrUubqjJq8ZKl6W8NGdcYB8kc
         6PULm41hTMaxeHfodomBKEGnAi7SPd96X66qXrde/Mlta51bdm6sOHIApph8fN5DtNhF
         PDhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="K/AnMh6x";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jnHtydwZDYR+B6IjgAGFx/Ex2TFlqyplQOcbukarG3Y=;
        b=FoWhat4C7nNwEAHp5bZRVkJJVPo+PWca9ZY5lqtQ8gyXL+EJ9Q1ccHdtUIM/vGWOlR
         wPPzSdGvVSOp35Re6eavDCM1V5Gn7vQDiBEhqg9Ae0I9qnLKv6hY+S40EJAeLS4YXIu1
         aVj8tkCJG1uqHCIGRe5c/iocmAFdtev+vzv1AqYSTCbWVtu6JqCG2AaXan+W2PFrmbWi
         Dhe9LP3L2cCKe3gJ/acclrPE66DCH2KVaRCzxr+P7Kiv91tJaJMKimgikyWYEiAmE2+K
         pqPsYdFrnfqqsY8BMMNOjZQpmKHb8jxwTFZ+rkeSVfX+nT8Xb14dOilmKErIeTTKITkb
         mQ1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jnHtydwZDYR+B6IjgAGFx/Ex2TFlqyplQOcbukarG3Y=;
        b=HveHKBtMWCldTHUce7iNmB1rXUXIpGOSGsz9ptDiHJ43faichKw6pCMtMv1x6wdj3M
         IcLGBLehg73MME8E5aih1CStE5HrQzCfrs/vqMJbEsNyiFzdKZ2xXNOUmpA+c1t0Eol2
         t3CrMzF7jtdJM2by0iEQSmeNgeCF4Tpq48rhoL+Q0O9b6HqwPTuzd0sxTG/VTKSWgt5T
         Yj1E5gLPyE4+lCu+QOcNzA6JprGOEtxVNcRDy/oR9gGxaSbaEaemyP9rg4OBanrVgRmo
         TrUYKyVVY2tW+I2vJEpAcq7i7hfVw/FAHILwW3reUxAhvfrYdtfnedJVu7EQJA7R0c93
         7fgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531y+vdk430fUKyyOmj899fHUsL3QvxcOSUnXDNzwY0oumc1NYvd
	ANPUQXl1Be1FveDyhIR3QOI=
X-Google-Smtp-Source: ABdhPJz4GyDZROa/jz7IleAUgCXx75doMuW9Cni9qiADls+u8LRlHZH+/V9CQxx1JrKMx9+tCY8oiw==
X-Received: by 2002:a63:1d47:: with SMTP id d7mr4372141pgm.44.1627700347006;
        Fri, 30 Jul 2021 19:59:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed82:: with SMTP id e2ls1804220plj.2.gmail; Fri, 30
 Jul 2021 19:59:06 -0700 (PDT)
X-Received: by 2002:a17:902:bd82:b029:129:2e87:9946 with SMTP id q2-20020a170902bd82b02901292e879946mr5017717pls.53.1627700346460;
        Fri, 30 Jul 2021 19:59:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627700346; cv=none;
        d=google.com; s=arc-20160816;
        b=Lw6gXIhgoTpVKscitwDEcARICK9Ec24Q883y1NKizvT/p6GEkJfuGp+ifK6C2nkjfP
         dQJ5fEg3uI5Xv9CZ9da4vHbejTPGbE4UkTF9+d4LEF/ssuSyKzSDr99r4s0waKoyUuqG
         roqtjt5NAMcd92GA1o5NhfNDUUHdMHU5g+tVMSSWgCVtPG3yy5hQB/6TnFPcIVlj20l2
         +9g+t073IIRDiDsnbp1T49cMxbF0PpgrBA51Oedi9PyZn6qCZm5XuzLeg0/pogDg1IrQ
         qoKEsyux8WoMNUJIIcxYr6QASSCxpqeQaStGw5I0Ijqr14nKNaGKb2lEwyGd1+5HiT/a
         pqrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=9Aa9q+ZgPH94d4mui+MhDlRe9awiZiZZrbzXI3QwflQ=;
        b=m86Q3flpdYcc+sCIH0H4rpH2stP67ZNRUJMcZbKzikXlBDzjGnE3FZ+wG8RWgElQYJ
         NmztXsroiSChQU0S3+FYKQOMSYXh9o2jx0LphVkOpTrfJjSmGM6qjm309O+SSIG8Kebb
         e1PJTu6U0AjNJgcStfJC9HuZ+lO8HteuDdzKxLGKR/w6qLU8JCJfEUO1//CkNyaVmff3
         gNjfRFbIhQJI4kaIV76F3tl6c4nZDrSFo2WISZda+efdecgrYoH+7BZJE5Epv+0nITKs
         juwnHS1R7VXzx4VvGnyKQjeFIwctA6o6f3Ds8R13g2LiWIpQYVcdpwKjgG2zekw5thWR
         UJTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="K/AnMh6x";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com. [2607:f8b0:4864:20::634])
        by gmr-mx.google.com with ESMTPS id r7si264704pjp.0.2021.07.30.19.59.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 19:59:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634 as permitted sender) client-ip=2607:f8b0:4864:20::634;
Received: by mail-pl1-x634.google.com with SMTP id a20so13325800plm.0
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 19:59:06 -0700 (PDT)
X-Received: by 2002:a63:5505:: with SMTP id j5mr1362082pgb.250.1627700346188;
        Fri, 30 Jul 2021 19:59:06 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id c7sm4280329pgq.22.2021.07.30.19.59.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 30 Jul 2021 19:59:05 -0700 (PDT)
Date: Fri, 30 Jul 2021 19:59:04 -0700
From: Kees Cook <keescook@chromium.org>
To: "Williams, Dan J" <dan.j.williams@intel.com>
Cc: "linux@rasmusvillemoes.dk" <linux@rasmusvillemoes.dk>,
	"keithpac@amazon.com" <keithpac@amazon.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"linux-kbuild@vger.kernel.org" <linux-kbuild@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"gregkh@linuxfoundation.org" <gregkh@linuxfoundation.org>,
	"dri-devel@lists.freedesktop.org" <dri-devel@lists.freedesktop.org>,
	"linux-cxl@vger.kernel.org" <linux-cxl@vger.kernel.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"linux-wireless@vger.kernel.org" <linux-wireless@vger.kernel.org>,
	"netdev@vger.kernel.org" <netdev@vger.kernel.org>,
	"linux-hardening@vger.kernel.org" <linux-hardening@vger.kernel.org>,
	"gustavoars@kernel.org" <gustavoars@kernel.org>,
	"linux-staging@lists.linux.dev" <linux-staging@lists.linux.dev>,
	"linux-block@vger.kernel.org" <linux-block@vger.kernel.org>
Subject: Re: [PATCH 04/64] stddef: Introduce struct_group() helper macro
Message-ID: <202107301952.B484563@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-5-keescook@chromium.org>
 <41183a98-bdb9-4ad6-7eab-5a7292a6df84@rasmusvillemoes.dk>
 <202107281456.1A3A5C18@keescook>
 <1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <1d9a2e6df2a9a35b2cdd50a9a68cac5991e7e5f0.camel@intel.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="K/AnMh6x";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::634
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

On Fri, Jul 30, 2021 at 10:19:20PM +0000, Williams, Dan J wrote:
> On Wed, 2021-07-28 at 14:59 -0700, Kees Cook wrote:
> > On Wed, Jul 28, 2021 at 12:54:18PM +0200, Rasmus Villemoes wrote:
> > > On 27/07/2021 22.57, Kees Cook wrote:
> > >=20
> > > > In order to have a regular programmatic way to describe a struct
> > > > region that can be used for references and sizing, can be examined =
for
> > > > bounds checking, avoids forcing the use of intermediate identifiers=
,
> > > > and avoids polluting the global namespace, introduce the struct_gro=
up()
> > > > macro. This macro wraps the member declarations to create an anonym=
ous
> > > > union of an anonymous struct (no intermediate name) and a named str=
uct
> > > > (for references and sizing):
> > > >=20
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct foo {
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int one;
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct_group(thing,
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0int two,
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0int three,
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0);
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int four;
> > > > =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0};
> > >=20
> > > That example won't compile, the commas after two and three should be
> > > semicolons.
> >=20
> > Oops, yes, thanks. This is why I shouldn't write code that doesn't firs=
t
> > go through a compiler. ;)
> >=20
> > > And your implementation relies on MEMBERS not containing any comma
> > > tokens, but as
> > >=20
> > > =C2=A0 int a, b, c, d;
> > >=20
> > > is a valid way to declare multiple members, consider making MEMBERS
> > > variadic
> > >=20
> > > #define struct_group(NAME, MEMBERS...)
> > >=20
> > > to have it slurp up every subsequent argument and make that work.
> >=20
> > Ah! Perfect, thank you. I totally forgot I could do it that way.
>=20
> This is great Kees. It just so happens it would clean-up what we are
> already doing in drivers/cxl/cxl.h for anonymous + named register block
> pointers. However in the cxl case it also needs the named structure to
> be typed. Any appetite for a typed version of this?

Oh cool! Yeah, totally I can expand it. Thanks for the suggestion!

>=20
> Here is a rough idea of the cleanup it would induce in drivers/cxl/:
>=20
> diff --git a/drivers/cxl/cxl.h b/drivers/cxl/cxl.h
> index 53927f9fa77e..a2308c995654 100644
> --- a/drivers/cxl/cxl.h
> +++ b/drivers/cxl/cxl.h
> @@ -75,52 +75,19 @@ static inline int cxl_hdm_decoder_count(u32 cap_hdr)
>  #define CXLDEV_MBOX_BG_CMD_STATUS_OFFSET 0x18
>  #define CXLDEV_MBOX_PAYLOAD_OFFSET 0x20
> =20
> -#define CXL_COMPONENT_REGS() \
> -       void __iomem *hdm_decoder
> -
> -#define CXL_DEVICE_REGS() \
> -       void __iomem *status; \
> -       void __iomem *mbox; \
> -       void __iomem *memdev
> -
> -/* See note for 'struct cxl_regs' for the rationale of this organization=
 */
>  /*
> - * CXL_COMPONENT_REGS - Common set of CXL Component register block base =
pointers
>   * @hdm_decoder: CXL 2.0 8.2.5.12 CXL HDM Decoder Capability Structure
> - */
> -struct cxl_component_regs {
> -       CXL_COMPONENT_REGS();
> -};
> -
> -/* See note for 'struct cxl_regs' for the rationale of this organization=
 */
> -/*
> - * CXL_DEVICE_REGS - Common set of CXL Device register block base pointe=
rs
>   * @status: CXL 2.0 8.2.8.3 Device Status Registers
>   * @mbox: CXL 2.0 8.2.8.4 Mailbox Registers
>   * @memdev: CXL 2.0 8.2.8.5 Memory Device Registers
>   */
> -struct cxl_device_regs {
> -       CXL_DEVICE_REGS();
> -};
> -
> -/*
> - * Note, the anonymous union organization allows for per
> - * register-block-type helper routines, without requiring block-type
> - * agnostic code to include the prefix.
> - */
>  struct cxl_regs {
> -       union {
> -               struct {
> -                       CXL_COMPONENT_REGS();
> -               };
> -               struct cxl_component_regs component;
> -       };
> -       union {
> -               struct {
> -                       CXL_DEVICE_REGS();
> -               };
> -               struct cxl_device_regs device_regs;
> -       };
> +       struct_group_typed(cxl_component_regs, component,
> +               void __iomem *hdm_decoder;
> +       );
> +       struct_group_typed(cxl_device_regs, device_regs,
> +               void __iomem *status, *mbox, *memdev;
> +       );
>  };
> =20
>  struct cxl_reg_map {
> diff --git a/include/linux/stddef.h b/include/linux/stddef.h
> index cf7f866944f9..84b7de24ffb5 100644
> --- a/include/linux/stddef.h
> +++ b/include/linux/stddef.h
> @@ -49,12 +49,18 @@ enum {
>   * @ATTRS: Any struct attributes (normally empty)
>   * @MEMBERS: The member declarations for the mirrored structs
>   */
> -#define struct_group_attr(NAME, ATTRS, MEMBERS) \
> +#define struct_group_attr(NAME, ATTRS, MEMBERS...) \
>         union { \
>                 struct { MEMBERS } ATTRS; \
>                 struct { MEMBERS } ATTRS NAME; \
>         }
> =20
> +#define struct_group_attr_typed(TYPE, NAME, ATTRS, MEMBERS...) \
> +       union { \
> +               struct { MEMBERS } ATTRS; \
> +               struct TYPE { MEMBERS } ATTRS NAME; \
> +       }
> +
>  /**
>   * struct_group(NAME, MEMBERS)
>   *
> @@ -67,7 +73,10 @@ enum {
>   * @NAME: The name of the mirrored sub-struct
>   * @MEMBERS: The member declarations for the mirrored structs
>   */
> -#define struct_group(NAME, MEMBERS)    \
> +#define struct_group(NAME, MEMBERS...) \
>         struct_group_attr(NAME, /* no attrs */, MEMBERS)
> =20
> +#define struct_group_typed(TYPE, NAME, MEMBERS...) \
> +       struct_group_attr_typed(TYPE, NAME, /* no attrs */, MEMBERS)
> +
>  #endif

Awesome! My instinct is to expose the resulting API as:

__struct_group(type, name, attrs, members...)

struct_group(name, members...)
struct_group_attr(name, attrs, members...)
struct_group_typed(type, name, members...)

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202107301952.B484563%40keescook.
