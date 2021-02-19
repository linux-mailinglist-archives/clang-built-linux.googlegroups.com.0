Return-Path: <clang-built-linux+bncBCM2HQW3QYHRBNGLYCAQMGQEBKDN7FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 31402320006
	for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 21:55:17 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id p19sf5932946lji.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 19 Feb 2021 12:55:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613768116; cv=pass;
        d=google.com; s=arc-20160816;
        b=maAPh81QjarYObnnANIxxb9MybcZI5qOwkn0gcVxfO8Q+RD2IL3EqSHcgAAQUrfya4
         5xDKIRaJ3DVmFxZSB76mLp/pjXPWmxTL1DtKI6wPhEfAHe2Mnyq64fdsA8HgaE6ywDHS
         XsdQuUdvx4pnzWIB38N0vyJ9DA8kmKlNDddZ05lZ4oO90fHNBLiJ81kwoXBa9fvyiazO
         fbLOAz0g2SmuU+GPiGBNNjgEc3cIcopaG6azYc37i7QGEYyarCxPBd7t7TI8+RPCsv5L
         Z6HHOBYKIk8o5/KPA1keR1k0l8v/Y8N91RFf3fNWBNV4FSVIC2jnpFAfiH1hVx1hYqBH
         7Guw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=UwrcTjYK/SiTO7DSWEbSBjH8kgDBAUsOMoROfUNIYs0=;
        b=gaxviSiz/xA4NTF7tXx9lQYqxTLKTUGZDXwtn0aHHy+MZ2jYTHpdYGJV49Dt92Aceh
         o3X87TFddwTkDIHT9TyY2ch919kMZwFAibmV1PNKPQkQwSG5smicghtWFk7AYepl/nCK
         HcsGktW8noSGF+ief9iCtzctdpbfwjn9Ei3yZgufJ0Vi29frzFcTlvfezG6F1IRb09t4
         EzEM9Gxkm4NubbQYxOak20wQKF1PkqTM3nz68VHMSoI4lgfhDZjetXhewoR4FEN4qEB4
         xaIbWffARg4LJn5KCg2RkjaP79nkhMTX6es4WdqQ1xTZrTdpNtNHPX8SxnVIFdvNsicN
         f/QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ZJ+V5qWX;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UwrcTjYK/SiTO7DSWEbSBjH8kgDBAUsOMoROfUNIYs0=;
        b=IsoNXVzD9DuMbDxDcjyPX/yDhMYVspi5YfFclhdUJLUZeOC3UR+POg4eWpzZ4KLsWp
         2VnTCwf7GoO6+7ujix3RlbjLVT/plvF40YX8StbyOrzUqUbtZ3dXheZZPFQmB7OranYc
         Z43h2RFDy7Qla3d2vnPMfHoIlTYHlW4k85YgLpKW0XBXCqcUWFD8dUExDzkjL/ls4a5D
         mN76IotHdW1bg8oG8Vqc0ORBp7LAyhx+GfP+ZYVdvsmRghkSj7LhHjOZezFiLYCAW5wa
         NPIqpucTN5QVX+odGO5eM8D2ZEiTYnqgMuh6DQ7/Rm4LBeoCeqJMIpQbUkKvoo9SaYtw
         Fl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=UwrcTjYK/SiTO7DSWEbSBjH8kgDBAUsOMoROfUNIYs0=;
        b=OCfl5SVhkq+Dc3QVh6zXOypTsXj75+feTtCgv3uvMtBKXZz4aZhXWyeFopTpLJUzy8
         qBje+GxI0L6ogLstPGXFAaVHLRTlnoXPtxAF7JIq6hVBg3jRDXILRtwP1wMj0s2xv9m8
         1kTq7rzaOMlISAwygcWu5ddLOOjOiG6Twfdful63SlnFyevgTl1YFSym+lIk8qaOb+Wp
         s1bqlqvJx+65kkpP9LZDAJdVtZgohaYYVSbj8cBoW/HHKHoiefgxxSjmLmLErYFXIkQD
         SC4wQRnHrjNmszf0dYE2FMIgqGfdLzkv5BXzg8jNooT8JH6LbpgTikan9mxgEzbQM9Zv
         84tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BpUhbNVBvc0TtRLOnLXGmr+k4LJWZFJMhDb/U0Yuqxg4hCmNE
	0fjZO0Sv1z/sCS47PYr2GaA=
X-Google-Smtp-Source: ABdhPJx3VxcG6azPcodmoEtULj9Dz0cnr7CoDPpmJNU6Zm4/pMT+P0zY4W69l8Mycy5bNE9z7KxoZg==
X-Received: by 2002:a2e:8ec9:: with SMTP id e9mr6744609ljl.372.1613768116719;
        Fri, 19 Feb 2021 12:55:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9696:: with SMTP id q22ls1856470lji.9.gmail; Fri, 19 Feb
 2021 12:55:15 -0800 (PST)
X-Received: by 2002:a05:651c:1386:: with SMTP id k6mr6989800ljb.51.1613768115760;
        Fri, 19 Feb 2021 12:55:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613768115; cv=none;
        d=google.com; s=arc-20160816;
        b=wn4rZHZ87DMO/oEHOVLEZmXPXmY6GEyxRyw5+Fc4UROvuzd/ETe4yzhLB3HYoHSS3O
         XV7axU40xjgOlzBVxx4wuU1Gy/AD4QdhKJ6Ug0k38hMdz50Kke/YvNutQSpzhrCrZ0kh
         2o9ANAW6VEClSLEgUI7fPFeNIxhd/4xIqjpcwkXDOqRcEwS60Vsdbr2qeDZPJl8Stp4X
         D1ggXyZjcWnT378sUCwbarvySzk2OqPP0B5n/f2LM3ADtiM3Dvlhx6oBcE5DUo4SIKIh
         SzZ6EMfYP2s7zunTXAv5KG84f25V6UVMOtEthsyF54kHkXSr9cFzDks3WRtsmetacGsU
         HqxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cQF6OCpz+o20VifELBJerj4OHgGrc/bwWUqXzOy+rbY=;
        b=DlNizAf5vLI7f4KW5l2z7AwQWjIreIecIjGJMo9vjUMXz9q9NrSn50tKuSTqcz8zrM
         hEl2hBgySVcyWOOMss6UyzxQorIYe+jAL8OC3ONYaH1PfcLRBYu12Pw6zmoSfZQ83x52
         W0ghmD2zQjJuD+5eBvFLiHpPsCQ3sycnK5Hz6Exn3TjGJi1FEnZnHrCwDSoUCfWPPVyh
         +Tn5ldXLbs28AnEmXA3+o87+3U1MDzby4N11F/xZ/9Z+F/7/nCKkZ9/kOgeNYW2IVHu/
         X4lC5+fbOwZ2v0rE1EeUkfpvslas33o1bzAe4HZPwFiIwdnS9UlEXxV5l9J6HWVDHr5T
         4++w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=ZJ+V5qWX;
       spf=pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id z26si266911ljk.6.2021.02.19.12.55.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Feb 2021 12:55:15 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from willy by casper.infradead.org with local (Exim 4.94 #2 (Red Hat Linux))
	id 1lDCmp-003Gu1-7b; Fri, 19 Feb 2021 20:54:17 +0000
Date: Fri, 19 Feb 2021 20:54:03 +0000
From: Matthew Wilcox <willy@infradead.org>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Andrew Morton <akpm@linux-foundation.org>, linux-mm@kvack.org,
	Mike Rapoport <rppt@linux.ibm.com>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] mm/gfp: Add kernel-doc for gfp_t
Message-ID: <20210219205403.GX2858050@casper.infradead.org>
References: <20210215204909.3824509-1-willy@infradead.org>
 <20210219195509.GA59987@24bbad8f3778>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210219195509.GA59987@24bbad8f3778>
X-Original-Sender: willy@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=ZJ+V5qWX;
       spf=pass (google.com: best guess record for domain of
 willy@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=willy@infradead.org
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

On Fri, Feb 19, 2021 at 12:55:09PM -0700, Nathan Chancellor wrote:
> On Mon, Feb 15, 2021 at 08:49:09PM +0000, Matthew Wilcox (Oracle) wrote:
> > The generated html will link to the definition of the gfp_t automatically
> > once we define it.  Move the one-paragraph overview of GFP flags from the
> > documentation directory into gfp.h and pull gfp.h into the documentation.
> > 
> > Signed-off-by: Matthew Wilcox (Oracle) <willy@infradead.org>
> 
> This patch causes a clang warning in basically every file on linux-next
> now:
> 
> include/linux/gfp.h:20:32: warning: redefinition of typedef 'gfp_t' is a C11 feature [-Wtypedef-redefinition]

Seems like it's also a gnu89 feature.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210219205403.GX2858050%40casper.infradead.org.
