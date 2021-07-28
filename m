Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBXWJQ6EAMGQEKEAI6QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id B2FB03D994E
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Jul 2021 01:14:39 +0200 (CEST)
Received: by mail-qv1-xf38.google.com with SMTP id hf7-20020a0562140e87b02902dc988b8675sf2898792qvb.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Jul 2021 16:14:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627514078; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bkqw+3JQIC9IC360BWZvAazBRXCUMrNSUUd7sPHQqAifRiEAelDPkK+Ko1d/Xc7wDE
         LQ3bN8tg4I+dSr4mSE5pvUkneZx8olRsjaKDmFaKcDZR2MxlgUX2JNE+0MTHHMGifl77
         hgP8urcDlC3XUuDuz/m2LXP04ebgbSF9aVxr2fkM3AzE+LbWfKsiF91W3Vwl7zwB0cPP
         EANHwvmC7cwKMpeo/HwJvjPO/6mkkkY/wOtY3Q4ajP1K7XXGdJrej9W7FUlF6zMOhslm
         yV2MCsl1sElIsmFr//EMB9nLDb1GHcksPnZLd1wfithzGDAZGrLoa9OGF/Z0IVH0fWdl
         OAJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=4kjBjsTtopnbToT/+rUz1NGrOSigyUY4YA2rRlx4SlA=;
        b=kOPiIOw7MaqtiYGE71McXmn/5tFW/fDkI3zfnmfUlc/CGOUI0L2SfgheE7KxbbG9ab
         kFu/03ToSbEkaI4kKEzK+FeDFsprdwJ/Gtb/af02o5YBZ/aqnW84bbf8yi2CkaipD+jZ
         3TzIMBinIWjOEMrTkKbCojR5X3vOQQoOyg3G8tn10v4Oy/svUxAB46iSW+kA5zlrS2n+
         aO6g9p9N/LXDd/hOOU5EbFpgRUnZyV6iKdTL2sK9twtusLjGPoHVWR5cfiUZ6ctsSJnE
         OQxO4E3eqfPqvl/AXQE6ZP2/28hUHo2XT7ocfPFwEt25BRqW2goHha2qG4cONYryxiiA
         98Xw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g6KzbBrS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=4kjBjsTtopnbToT/+rUz1NGrOSigyUY4YA2rRlx4SlA=;
        b=aFj6IH6WOHo9KNGrKpf9E7fmgasgm1JA7e2U6wbY+QPqvM+43ilBPskgyoSFesZz8I
         Y5atd1AteVb8BcGcBTM6B8tpqOyLEc0eGQyro1U+e3Mq6B61ihsKFepZKEXh2igPTQ2i
         0fiobtDfd/enI9gO6R0r3ElpfE8syvVbpTDxs7bmSA4VIYWsxBXoT/LwqvK2NsJCOHU9
         SLjw/Giutt3d4aG2u2AGKMZjguCbk9utXoY+BGFQ1H8FgKWVuRJzdUKZ7V8EFdwUn7eN
         09KPA+R1m45O29iTvtsT+eg8sY95bfErFs29PXR5oCKXMkfpVCZxHRgX1TbBjjJM6rVQ
         ot7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=4kjBjsTtopnbToT/+rUz1NGrOSigyUY4YA2rRlx4SlA=;
        b=FsWsLrREmugPLjuZSfufabkgjwS5GJItK5i22d4GG8w5aiA4VAFage5vSQT/xNpK6Y
         NcL3w70PJ4qA7gwEZmlAVzibQd40vZ3dnmk3Px+/+zECOI7LWss3x2SGDb/jwC9q1MoX
         6+Y7//xmHEsXfUGtTLQAr1Kdtkn/vJNwCE4lmyoMBOXG2mlbZ0+CAxIi+YdsuE57vqWM
         1okmkDj3lbz2aRnzECD3srGITe+FVGUZrkvuYZmZM8UvKkEKtQ3BeV/NxWjbrQ2+YUB9
         Jac6W2f+oALExMDr+bCQQgrlD1JSKj0IrZGkQ1uzlHt6G2uEkM7Y0NBjpl3fWwi7rRLt
         1PGA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Jx75s9ROsLDsu/XJ3M9PrUOd5nkbeUfXLGgAZ0XpBnjgKu6H9
	IM1HRMEAs5P4Gr2JTtNZ/7k=
X-Google-Smtp-Source: ABdhPJzJN1A5iovGmj9UMJ4FZTZCG5akmM0VuFNPvCZFcsL6IsXqM8Jq/6v6OhLymNHSmPmC5TzF0g==
X-Received: by 2002:a05:620a:13f5:: with SMTP id h21mr2174356qkl.252.1627514078595;
        Wed, 28 Jul 2021 16:14:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1016:: with SMTP id d22ls1640281qte.4.gmail; Wed,
 28 Jul 2021 16:14:38 -0700 (PDT)
X-Received: by 2002:ac8:7489:: with SMTP id v9mr1845440qtq.9.1627514078102;
        Wed, 28 Jul 2021 16:14:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627514078; cv=none;
        d=google.com; s=arc-20160816;
        b=tzSxHwhS3dNx13LHqq4hhrhydlo56A1UWXqXeYyYGVoVTxmAkQCO7CkFmsKFaV6eY2
         uV/FjiEZdvLfwdToEtMiKLWp7AmkIMB4AU27shE5wZV95a9iSEU1Ve/j89QuaiMUNdRi
         UgyuYqAGEKU1SFSqvzXvz1CkO10U0h17gLn51BmPCfeCJucS5sh4KV86EHGW5AAwhSbs
         zo/UDe8rnYgeS+1UTE96Hzmu+XNHZ1l3mJcLi8ppJIJiFUp2GsZ+XhVCDe1cpB06x1Ci
         cqQA9lSjIg8LL+i/31U7WtD0PTH8hJqzpqKdh5XnP/m+AwQW1KO9CdkNpjvLcEm9+eGv
         5SSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cp/1gwQbxKm35mFKd4TC2EFL1W+EtjwqZdL50egUVws=;
        b=Pa6uaTbB2tzxv1pw+xQDs1MgW/MnXQj5Q5EbAInZOqIn/Q2mIkVx49w9FqvVWglOLB
         XH8gnglEBbxFdnFzBxtT7jP4dGVqQBJc5e0mgW1St26wSj/dz6cXoHSQHVIxxEQsQtWw
         qiOEz+oo1ehXNoiviJHVJU348pHplsBJNJZevbksj4V4xcWfT9PINsdJdcSwqTOwOYwE
         fxyJfbMIe+JFD01AjH8TEBuNrrTst9OR3HseCldxoGOQenQb795kqewIKouB7z3Xh0a2
         FrUPJXbGtvWVe7nYWUKOT9mOh2DsaoeK/XQj9zIqsODUYvsVOURSjoMbiSFMfJmG+PKY
         aqig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=g6KzbBrS;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id v31si81136qtc.4.2021.07.28.16.14.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Jul 2021 16:14:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Received: by mail-pj1-x1032.google.com with SMTP id mt6so7533019pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 28 Jul 2021 16:14:38 -0700 (PDT)
X-Received: by 2002:a63:5a08:: with SMTP id o8mr1175343pgb.120.1627514077222;
        Wed, 28 Jul 2021 16:14:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 16sm1132146pfu.109.2021.07.28.16.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jul 2021 16:14:36 -0700 (PDT)
Date: Wed, 28 Jul 2021 16:14:35 -0700
From: Kees Cook <keescook@chromium.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: linux-hardening@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Keith Packard <keithpac@amazon.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-kernel@vger.kernel.org, linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
	linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 02/64] mac80211: Use flex-array for radiotap header bitmap
Message-ID: <202107281602.4D9ED671@keescook>
References: <20210727205855.411487-1-keescook@chromium.org>
 <20210727205855.411487-3-keescook@chromium.org>
 <20210728073556.GP1931@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210728073556.GP1931@kadam>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=g6KzbBrS;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1032
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

On Wed, Jul 28, 2021 at 10:35:56AM +0300, Dan Carpenter wrote:
> On Tue, Jul 27, 2021 at 01:57:53PM -0700, Kees Cook wrote:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memcpy(), memmove(), and memset(), avoid
> > intentionally writing across neighboring fields.
> > 
> > The it_present member of struct ieee80211_radiotap_header is treated as a
> > flexible array (multiple u32s can be conditionally present). In order for
> > memcpy() to reason (or really, not reason) about the size of operations
> > against this struct, use of bytes beyond it_present need to be treated
> > as part of the flexible array. Add a union/struct to contain the new
> > "bitmap" member, for use with trailing presence bitmaps and arguments.
> > 
> > Additionally improve readability in the iterator code which walks
> > through the bitmaps and arguments.
> > 
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  include/net/ieee80211_radiotap.h | 24 ++++++++++++++++++++----
> >  net/mac80211/rx.c                |  2 +-
> >  net/wireless/radiotap.c          |  5 ++---
> >  3 files changed, 23 insertions(+), 8 deletions(-)
> > 
> > diff --git a/include/net/ieee80211_radiotap.h b/include/net/ieee80211_radiotap.h
> > index c0854933e24f..101c1e961032 100644
> > --- a/include/net/ieee80211_radiotap.h
> > +++ b/include/net/ieee80211_radiotap.h
> > @@ -39,10 +39,26 @@ struct ieee80211_radiotap_header {
> >  	 */
> >  	__le16 it_len;
> >  
> > -	/**
> > -	 * @it_present: (first) present word
> > -	 */
> > -	__le32 it_present;
> > +	union {
> > +		/**
> > +		 * @it_present: (first) present word
> > +		 */
> > +		__le32 it_present;
> > +
> > +		struct {
> > +			/* The compiler makes it difficult to overlap
> > +			 * a flex-array with an existing singleton,
> > +			 * so we're forced to add an empty named
> > +			 * variable here.
> > +			 */
> > +			struct { } __unused;
> > +
> > +			/**
> > +			 * @bitmap: all presence bitmaps
> > +			 */
> > +			__le32 bitmap[];
> > +		};
> > +	};
> >  } __packed;
> 
> This patch is so confusing...

Right, unfortunately your patch doesn't work under the strict memcpy().
:(

Here are the constraints I navigated to come to the original patch I
sent:

* I need to directly reference a flexible array for the it_present
  pointer because pos is based on it, and the compiler thinks pos
  walks off the end of the struct:

	In function 'fortify_memcpy_chk',
	    inlined from 'ieee80211_add_rx_radiotap_header' at net/mac80211/rx.c:652:3:
	./include/linux/fortify-string.h:285:4: warning: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()?  [-Wattribute-warning]
	  285 |    __write_overflow_field();
	      |    ^~~~~~~~~~~~~~~~~~~~~~~~

* It's churn/fragile to change the sizeof(), so I can't just do:
	-	__le32 it_present;
	+	__le32 it_bitmap[];

* I want to use a union:
	-	__le32 it_present;
	+	union {
	+		__le32 it_present;
	+		__le32 it_bitmap[];
	+	};
* ... but I can't actually use a union because of compiler constraints
  on flexible array members:
	./include/net/ieee80211_radiotap.h:50:10: error: flexible array member in union
	   50 |   __le32 it_optional[];
	      |          ^~~~~~~~~~~

* So I came to the horrible thing I original sent. :P

If I could escape the __le32 *it_present incrementing, I could use a
simple change:
	 	__le32 it_present;
	+	__le32 it_optional[];


> Btw, after the end of the __le32 data there is a bunch of other le64,
> u8 and le16 data so the struct is not accurate or complete.

Hm, docs seem to indicate that the packet format is multiples of u32?
*shrug*

Hmpf.

-Kees

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107281602.4D9ED671%40keescook.
