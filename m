Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBU4U6WEAMGQEMEIOIKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BC3C3F0AB2
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 19:58:44 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id l85-20020a252558000000b0059537cd6acesf3709437ybl.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 10:58:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629309523; cv=pass;
        d=google.com; s=arc-20160816;
        b=yeqozJ7idIxwZl+9aOav448ZXv/x7UKMAVRN9njaWKEjKkAPjeUV4DJH1mciCyCF/X
         0sPgQpVZdZQc7kJ5hHTu/V+mdGsB9QJnhL9ntmb8j1I+tkluA4BdCo+Xa8xVxMEsIKEt
         4CG4LBsx0iWtSzSYmLufTOq3JZwWqNThArKau3hOkovUsMGGgKK9Q1QfzQwLrK+npo6G
         obMXiBh67UkWJj/LXNNT2oSuTNh1d4+Uh0QRfolzUUZEepfAOlmYkr0bg8pFU/RgXjR2
         t1KP8ANbSI8xb3PUybz9ivDQYcTrgdYPTlXQX5kf32b6qi40YEm1S2wPymnlcTre3wWW
         VXmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=1bc06ReIMPWEtHgFOG10pMoOQt3t60uoD2McAiaMTLg=;
        b=sTbMrvpvnI0uOj2clS+F9S+s1chxEYabl3fi0xDIBcSsWEFuL1bZb1fUc7umF+OjVb
         ToK9CIUSjJtMzA+7sn3BGxfeT+s0oXr0SFF58aJ0NhsVR4ysV8Tel6GPALdOSkzaNDUs
         zqHz5FSTle/CvD063NDk8cKScrPYltKsUkxT4FxnZuQzO7lbGPUcaIpDizB88a5QTFxt
         KceBJ50j/6SUv3WsOozbsEIM3MK9Sd43fLnaXxZJo9hhSfNTAciEXzeHF+kigf885qhr
         0e3uVEN4hL9JJSsAzM67fd/Xn4qvosFoPomG1mshUM+OWTnQ0lxK9WOewqW4I1l9noBO
         TB8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="EE/CeXz6";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1bc06ReIMPWEtHgFOG10pMoOQt3t60uoD2McAiaMTLg=;
        b=nJMNrbQ5HQTRvEetkBttZoWHQ0NwfsjZAt7pey60buJKzpCprG04/8qE+XO4TUjq5S
         LVR9scdAaAr1HEwrOB6IYewbu97QeYwj1txAoNX2fW2W/Pt0HOTkD0YomAQni+hhnkUK
         wPZY2FBF8hR2pVPA8XDNvLwAa63gd20jEH9ZKHhArjD5eH9giseoaYzkzo8i/FUK5k4v
         jXFptcHYH8WnZjx6eJPmc57w7+2g6u8V7JbhbX/ai8EjxUqeiSxvcIxhDJfRbyI8pu43
         WKLeOZOwcPEROUIBU1QIiW85z9Lhlop/wh7Il7x8j7J27mlRtue4E5ahKSyJ1z6Q0eAc
         08UQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1bc06ReIMPWEtHgFOG10pMoOQt3t60uoD2McAiaMTLg=;
        b=hr2f4WYuhUuF9lggH3bZmcNBuEagF3MHVxbBq3aBzsFcu05EYe44GA4By3ZaSM20XZ
         1tT/DCopxJ17ZZRJIzZ+PlrR3N2OCk0Afp0Ar6+oLqRyhlZTGPWTyrJ+U59lhg+DXuKv
         SpS4Jgjc6cmgrDzefRIbiCUfFdXFsUpchWaacD1t4LLej1ga7UdqBoXe6Jiz7LqdFLh+
         Fsbr2atxsPSJ+E5YuV8VlHsbwgbPp+Joo58mCxom2gUhXpxb0If/RcMyzculQwnTG8GT
         hXsAhDZGZr1+bvU3CXBPDxtktynEWa3NZZGUZDyjjbnTeT17fynj+Toc9SGFXiS8yOtz
         wdcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532I0fKXHGDDR3E71fwLtz3uNCWVSyBIylMyxF2GYlYTvEMqnEBS
	lJgomoiF0Qotlop3WHbNu88=
X-Google-Smtp-Source: ABdhPJyqS0W7Rj/+rqtdhvR78k4/72jeU/xsYy65/fZq0nTds0l9YyVuCzFGpVpQUSV8+M4tDRqH4w==
X-Received: by 2002:a25:c305:: with SMTP id t5mr13095318ybf.410.1629309523643;
        Wed, 18 Aug 2021 10:58:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:6e04:: with SMTP id j4ls437494ybc.7.gmail; Wed, 18 Aug
 2021 10:58:43 -0700 (PDT)
X-Received: by 2002:a25:a527:: with SMTP id h36mr13007596ybi.326.1629309523159;
        Wed, 18 Aug 2021 10:58:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629309523; cv=none;
        d=google.com; s=arc-20160816;
        b=OtfprHAVJs4jXLd2gk2NLNjtuMPYlqOvYRikY1HWOTqIbQ7CHasMZ5AtRnplCM1oZf
         Fxn2jbnTto+4T6/JhHMXh7Igw9cfF7us5FPj4ujomObpyST3yYqogIBRPwFt0ltE7zfz
         vcauByJvYsOviKgPxrAxxcLrjSvAfSHkiO/jJmtrqjoKVJZY7qrx0L9mntvsiiSY83hU
         6PypxvPLqm/QyDqJdI5l9YR6p5947xTibEV50+wek4VXRCbFXsDByJDXe/QmOVf/yUAE
         05jDBbmz3V4knbB0Wsk5o4py1zacciBcuCrAfNBjHLwhvxHtPSSq+uqg3jLF/8bpxAAp
         uIFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=04ISnfQR+B0rcb/OFZEw0eB8ueZIQ4PQaRknilR6Dg0=;
        b=Metfmr/gFolntT9coeqE55uwQkH7BzETccUcSOc5GxWbNmmFsCUpd1z2i7b7jx/7RE
         Xmst0CDIWQuolQGWpkDR1wSn0+Hr00fDWZ+Ken5h877d0LA/R+RDnwir2u2J5p2qtp1e
         X1kSn5DhOrVRPeNhnqF2OLmQJ0Bewfr1Y1WRs1cvgFcIKdBX2ukbV1rnQOPkz2d+RkcO
         +IX7InRTHiZPKNxVgwl4ubqvCf3xNX6c6oTpn070CxRAqJ0BMrFPRvO2em4eRWClTzQJ
         5JNoILhy0Zf7lbNg2IKiF6ex9SIz5LqoNI3sQ8AoYAOHJa+Gs4X+ZSSrwl765ey3SRih
         M06A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="EE/CeXz6";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id d10si73384ybq.1.2021.08.18.10.58.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Aug 2021 10:58:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id gz13-20020a17090b0ecdb0290178c0e0ce8bso5631882pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 18 Aug 2021 10:58:43 -0700 (PDT)
X-Received: by 2002:a17:90a:458c:: with SMTP id v12mr10748262pjg.50.1629309522461;
        Wed, 18 Aug 2021 10:58:42 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o1sm411141pfd.129.2021.08.18.10.58.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Aug 2021 10:58:41 -0700 (PDT)
Date: Wed, 18 Aug 2021 10:58:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>,
	Miguel Ojeda <ojeda@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Daniel Micay <danielmicay@gmail.com>,
	Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>,
	David Rientjes <rientjes@google.com>,
	Joonsoo Kim <iamjoonsoo.kim@lge.com>,
	Vlastimil Babka <vbabka@suse.cz>, Dennis Zhou <dennis@kernel.org>,
	Tejun Heo <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Linux-MM <linux-mm@kvack.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH 1/5] Compiler Attributes: Add __alloc_size() for better
 bounds checking
Message-ID: <202108181058.2BE1508@keescook>
References: <20210818050841.2226600-1-keescook@chromium.org>
 <20210818050841.2226600-2-keescook@chromium.org>
 <CANiq72=ym5ubiXgwt=xyyOSxnPFqgfArJsPyV9juOuwWN+PqCQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CANiq72=ym5ubiXgwt=xyyOSxnPFqgfArJsPyV9juOuwWN+PqCQ@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="EE/CeXz6";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102d
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

On Wed, Aug 18, 2021 at 03:07:48PM +0200, Miguel Ojeda wrote:
> On Wed, Aug 18, 2021 at 7:08 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > Clang can additionally use alloc_size to informt the results of
> 
> Typo.
> 
> > Additionally disables -Wno-alloc-size-larger-than since the allocators
> 
> Disables -Walloc-size-larger-than?
> 
> > already reject SIZE_MAX, and the compile-time warnings aren't helpful.
> 
> Perhaps a bit more context here (and/or in the comment in the
> Makefile) would be nice: i.e. why are they not helpful (even if
> rejected by the allocators).

Thanks for the review! I'll get this all fixed for v2.

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108181058.2BE1508%40keescook.
