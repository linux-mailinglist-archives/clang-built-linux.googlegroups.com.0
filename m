Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBP6BV36QKGQEOJ2WJUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23c.google.com (mail-lj1-x23c.google.com [IPv6:2a00:1450:4864:20::23c])
	by mail.lfdr.de (Postfix) with ESMTPS id C5ED02AEB84
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 09:28:47 +0100 (CET)
Received: by mail-lj1-x23c.google.com with SMTP id m20sf500715ljj.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 00:28:47 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605083327; cv=pass;
        d=google.com; s=arc-20160816;
        b=n+a5Rd/MU3ZDKNJ6NbFytK5Uy5SxSEqZJ8rHzPT71g4r5ms74lLtS1+YeITK8QEu0l
         U19c3qXN3QNh5D8o3Bb/uImIH+rT3D6CNTOrRWhFfsShE/nKunWMJlXfvJ6XdyuPqTml
         /BHGzQFPDMBuC5j22VOS6OBqhHmWs+JQvIzKQ5O0U/DmCbia/trBoCnA2g8E36XIoY5o
         a4Xua5AiOiUthsPt4FD2S7zNUilpg9jtstT080wJqYutdH5417khPpjCCEaHIdM2XoUf
         u/BunN8ybUnQcYsgqTgtKRM6BfTHlTRJfHagxBD7JtCQ65L522DjkON7rJ6tZ2nU7AVD
         Pg6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=Vm3WMs7M2Nbl+Ofbk/nTE5A4dEuFSk37P4sLbOy5HRI=;
        b=e5HmGBVdn1IsbSKSAZykIyheCieODuZcOUeZxzSlEDKqgEc14F1L87ekXEvnkSYLyK
         3UD7IloU3YyW3gJx7FJ4WzG27PAlbmbGtwj9hG14/tUBgVrE2+k0cbxxYyy6/FXTaCmY
         mHDSXt580eUTHRucnsv4qkOFpfo7vzKyc3laydujJ37kam0Ec3kqveu872STjEXoqXMb
         wqSUoHGvCZMQ60vEKIvmlZtXbyWkoT5hllyIaaa3A7aXDyqr1koAnggTtE9Qto9jaE8S
         DNPq6CNMpjxJcypzO/6IEmGg2TakIuNb2iMAQjI2yfEn0bBRdAaRpbUWrvhL9rXk5pH5
         cCKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Vm3WMs7M2Nbl+Ofbk/nTE5A4dEuFSk37P4sLbOy5HRI=;
        b=Gnc/NzVj5zAC4LNtjOhWA5NRcDHpic0El5qJ7NYTksH/qRnCzGdmM4/zp28TZval3D
         1JOK3fF0axfPNiaN5kMSwQLbg/apopb9mmoMRvE4CRF+fabpYXljUucIMR39HsTES5P/
         BLLQ3rV3Y+vTuvePM81vUJ5xewDOk8LdZCPZvM8YaUHY4ENIdHU1KaxAr/cGJLYeCfFt
         ZslM361qAXFmZeytlfAtq2xKHKtTDmsThW/a8SaQYt7RSnRg1pSwX4KkMjF9ODi3N+/f
         m9NWseAoR2nrIdngZ9827a2eLwg+z5JuG00fEFB0l9DsjqCYXMQPlbiBakhrhafVIyUQ
         8PZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Vm3WMs7M2Nbl+Ofbk/nTE5A4dEuFSk37P4sLbOy5HRI=;
        b=i6l/ZVe7OuRzT6aAOThIJMcoIrO0o1Vprs7Zr36BdyzNn9+G5kc3K7wL6YqafabVmU
         2pHQKEnUeMxFzoSi8L+YIY9QFbHWmXb+qwM6NmMhteyshhMLS+k6D8mb5Yt0l1G0KqbE
         yp3WZPJT4mvfk42FNv1hHoEpB0RyXjeTs6cse53EO4fURhrTtU40g+0O+N933zqg4qXl
         T/07Rm6zY9i4O9/eqY9kRFCS6ruo0SNB1U41hpumqzMDMryawEGqUr7z+kQTrwQIhppM
         j/+moq6YrcY3gbUIaM+muC+9M87U8JjeBACLKgn84sotKDL2/DNJkFevJtCyfWwEIKL5
         Suew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309bUY0rjtJXrxnVB64Q2kxWKKUjOarOpYy6HaTfLELW/Zhcw44
	/GlbFuPuflaNayyi4MC64fI=
X-Google-Smtp-Source: ABdhPJw/PyzCqDXn8iauhdtAD57Pa0XYc95UE9DNmeEkzCIWUkWsQ+RZsut7SHma/rB/J0YGLAk0lQ==
X-Received: by 2002:a2e:93cf:: with SMTP id p15mr10882648ljh.141.1605083327253;
        Wed, 11 Nov 2020 00:28:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:480e:: with SMTP id v14ls2114612lfa.2.gmail; Wed, 11 Nov
 2020 00:28:46 -0800 (PST)
X-Received: by 2002:a19:230d:: with SMTP id j13mr10078614lfj.378.1605083326029;
        Wed, 11 Nov 2020 00:28:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605083326; cv=none;
        d=google.com; s=arc-20160816;
        b=svilZPXqaO5vxwr9XDZ9wICoDagWZOVJiFlAIMNZyFW21RfPPq5qIcLOLRqS+M8vKt
         QHY1jMuaftLo6nX9Vz49WZig0NT9weK7orjzwrgJ0JqTV+W+EE+4h62CSDOvroNQ3i+Z
         6K+pvGlbHD91sjOUSMZBDLl6EQTFiaKeFWKQHdX8PIdNFfFGYirR4mZ1iQKoPGAjjdeS
         MxQ7WXKzc5xPgtF4eSljsYhGk2F7UWzKRYqM8nhX6zdlXHW732buWalJ70fso687PjAz
         fgZrOgB6FxOy1mbrLozlM9Se8Qg2fQg6HTZ5kZnOk9y0tuFYPOumuvJDqg5N4YB1gVU4
         hzog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=8ShFJgYfa48oDw/ELUYPX5TLeEpbijto7vRhFgU1Ouk=;
        b=MXqrLJgzNznJZzlfC5poDMyOjoTVPU0i8MO0aziGxtjIYpAYf1qSii99Ags566ib6a
         HLx6l58ANJBgZ8k00RPmBYtb6Ftyi8GbVO2Ahln7r1Ju/783+D4VxVnTFXOnTSpwnU4T
         thNyzNdEKGmFuCwtIpe6OENwCTqlPq/SukKWl5cz+52Ow2ITgk5CcCYrV/WhbIUr+5Zn
         SK1iaT4kCVzhsmKl7remi9NcShzIZNWUaSM61KlMbg/fd5JoiI661r1d6nX0ZAbLus75
         6WZElhmTnwM/DGbu8NUhB2w0nXfOmnrJP8tkmhdNbNUTdLvJpkMNjfBQcaUG/JcTaXyC
         LmfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id z23si43477ljm.6.2020.11.11.00.28.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 00:28:45 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 26B746736F; Wed, 11 Nov 2020 09:28:43 +0100 (CET)
Date: Wed, 11 Nov 2020 09:28:42 +0100
From: Christoph Hellwig <hch@lst.de>
To: Christian Borntraeger <borntraeger@de.ibm.com>
Cc: Christoph Hellwig <hch@lst.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	akpm@linux-foundation.org, dan.j.williams@intel.com,
	daniel@ffwll.ch, linux-kernel@vger.kernel.org, linux-mm@kvack.org,
	linux-nvdimm@lists.01.org, Heiko Carstens <hca@linux.ibm.com>,
	Vasily Gorbik <gor@linux.ibm.com>,
	clang-built-linux@googlegroups.com,
	Linux-Next Mailing List <linux-next@vger.kernel.org>
Subject: Re: [PATCH 2/2] mm: simplify follow_pte{,pmd}
Message-ID: <20201111082842.GA23677@lst.de>
References: <20201029101432.47011-3-hch@lst.de> <20201111022122.1039505-1-ndesaulniers@google.com> <20201111081800.GA23492@lst.de> <673267d5-93f5-7278-7a9d-a7b35ede6d48@de.ibm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <673267d5-93f5-7278-7a9d-a7b35ede6d48@de.ibm.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

On Wed, Nov 11, 2020 at 09:26:20AM +0100, Christian Borntraeger wrote:
> 
> On 11.11.20 09:18, Christoph Hellwig wrote:
> > On Tue, Nov 10, 2020 at 06:21:22PM -0800, Nick Desaulniers wrote:
> >> Sorry, I think this patch may be causing a regression for us for s390?
> >> https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/432129279#L768
> >>
> >> (via https://lore.kernel.org/linux-mm/20201029101432.47011-3-hch@lst.de)
> > 
> > Hmm, the call to follow_pte_pmd in the s390 code does not actually exist
> > in my tree.
> 
> This is a mid-air collision in linux-next between
> 
> b2ff5796a934 ("mm: simplify follow_pte{,pmd}")
> a67a88b0b8de ("s390/pci: remove races against pte updates")

Ah.  The fixup is trivial: just s/follow_pte_pmd/follow_pte/.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201111082842.GA23677%40lst.de.
