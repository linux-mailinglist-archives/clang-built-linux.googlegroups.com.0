Return-Path: <clang-built-linux+bncBCUO3AHUWUIRBOWC72EAMGQEHFMZYDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A1303F2C28
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 14:34:03 +0200 (CEST)
Received: by mail-ua1-x93f.google.com with SMTP id u9-20020ab07209000000b002ab978d1714sf2343420uao.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 05:34:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629462842; cv=pass;
        d=google.com; s=arc-20160816;
        b=UHBOnFz4a14ZZqN1MFTFKFAyiK+w/OiIhZxuCWJj8WllrX1u2VCdEl121drf0uf58w
         eTrEBbefMKtF77c03efZH8aIlA9x76SIPryzZy3vgTuLUI0wN6zM72fN+m9l/E0F7dh7
         DPCbSyGwjjnczygRBbGaaiQLS807gMmQep3DSyY1CGtxNG3UovfLvzdg7K9IK04R6hzk
         bBkKrOQObcHxTMbfteMLsGlGi5lNQ+EtgloocsJqKLzpiobVZ13uoOx+CV8FDf94grgt
         qwmQf3aHv3DjOkyp6j5e0dkW89m/jf12O7OSAdONTZ680SwwcyAp6xyASh+lMy1CKlzH
         QOzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rTiwLxal1QeW/J0PDt52rY1huWrMKE4zrrxq1kqtBvY=;
        b=qKrfXWCgy7M4GQYZF9gCsqqllEU9RJQWxfio25sjhDjhqt2WE+q4owpUFUqRjToxDn
         GMlvTC00/eeExrETCODapVsHMDM0RMNbPxtiPRdi+/BV0hCBwHdCIizQddKSllxmQUqi
         S4Y+XQp56IZOOGSV4g2m7B11w7yWepnsKg1Q4751ZmuF5bE3SNm4qxn+Qls7G8mcQ65M
         U8HQjaOvrneVDK5WqbPyi8CUFxKxLNvW6hgQyRiFRMMCzUtmh/XN0GdCaC5T5XqMWwo9
         Kif+hrudvNCysN+0QR9paJYO8SHHHxgSsdkEVEixD4nH7ioic0BmcibnBDe4TaFM1koj
         BdoA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=LKWHjCeN;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as permitted sender) smtp.mailfrom=jgg@ziepe.ca
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rTiwLxal1QeW/J0PDt52rY1huWrMKE4zrrxq1kqtBvY=;
        b=pNYbBYmvvGuEP1y3KKjKJZ1UADsmfmKzmf1I6EvdaxwR+lA8Fv9FGG6wgoLXi3IE3T
         WkowTBMqTkQLXCyw8DgyzyJ221Tiz5y8IGf3xigH+VVOyBdcpXRu9JYYj6aCsn3x9KZz
         D11dvJ4OOi5put+W6wuidFvmj4ND03x+NfteQ73rsXdyECUj+VfLh8AZ1Sv89TFAdNNr
         8unX91Y0E2yNgO4mfxTjqqOSdl+a1Bu7g7HcoHRdADA7zW537BG3zOnnXVBuEKosRwzl
         J+QtW8ISYdh/y6DHq4iST35SAnJbwNpBEwX4aXZyhusuOGgbw82J7Bq9m9yRZxy3H532
         DUPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rTiwLxal1QeW/J0PDt52rY1huWrMKE4zrrxq1kqtBvY=;
        b=cP3JMdw0djOZOTL5YOdaNaI9/Kvn7g9KWElcmi6VAJAnmXv9bYWsa8JLLi3k3K2zGO
         uziZnMhYyP9Gfx3q/LhPsBPz0KX09NYfjaBlFrI5phvCY4DrQcDYn32WShjj0F1oFRyf
         RLIR8cs3OnCW5sWLpfQeQEpQz6pLZMcDaboZNbViyy4FW7w0OuxTTfBv6oIneInFpKY7
         M8ozH747C9CsvHtYpAU8B91mvB9E9m7pBwUv0qhZFP2oJhyqTGbfZ24ooVLGvNRUCzM7
         Xm073nVh75G3Fh74I+pYt89t9ieJeBrLyku9KHFD5NF2UkRRKb0f0vSgSAoD5JMf9Uhu
         LNrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5310lPd0uPDKwPtDuxYXaV2VLrbF8lz74Zs+wZVqaxv9rGUDfvd8
	KNVknCRhgr6VNz5mbwIS/f4=
X-Google-Smtp-Source: ABdhPJzhXUHH/9qUhgdN8C/5zxcIZ8tiAoJaTYydIBO8L76MCLVCWBoVNyRsRQS1q1jF7qTrCNm2FA==
X-Received: by 2002:a67:7cc9:: with SMTP id x192mr16925164vsc.42.1629462842472;
        Fri, 20 Aug 2021 05:34:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7285:: with SMTP id w5ls906351uao.8.gmail; Fri, 20 Aug
 2021 05:34:01 -0700 (PDT)
X-Received: by 2002:ab0:35f1:: with SMTP id w17mr14218462uau.135.1629462841931;
        Fri, 20 Aug 2021 05:34:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629462841; cv=none;
        d=google.com; s=arc-20160816;
        b=wWQdmPgkcd3Y2OjRKfXjl5AJI0adS5HM+IkLQiC41N9w3p+xd0ctNluhsjSS1RPVeq
         adZM2D+CqgIqmyG80E4N97N18DrORSztOdjgb2IsrjYyRaMqVLRtXWT+fU5tDlPFwC9x
         /riHJc7LaMBQvb8xq7a0RHX5V2z9zmA5JnJ3/l1cOLFw4+77T9c/azGHntcG2OaJdu4Y
         gMVICoFXCYGmzEb6dN4lJlEk0Kr0dZ5aohm1v9omAZmzge1b/iEWdfFslqW7UziTpy0v
         L5k4jCIN2Vm6T7w7nF+ZP02zm5C65b2FHSF9OjIbFT6bEmCIc3pZ5Nyvf9E7Ya2tqC3b
         ZvvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=FxHzHqYkZIYKuBII5yJmxkfX68sHHNA5VrSWbqQXyKE=;
        b=SMT1EhDwby9D2oHa8AIgU7l33c/TOiXoos9SiJ9XfLPd1XJ6mgmAGR86A5qTfadvsv
         0H44t9A822Gj5176kchixESZ+mQEbtuJ42Y6LEuAxllMTlBlSmYbXd6cN1XBX1+Qe1bh
         DfzeowFb+UtQdrJu+78/6sXSEQJ5UlECdZXgqoghikc1X2xaIrvKnIoqiZKtRBV35d0T
         cSnIfMFCpe17TM3NjS3y13rrm4GCDX/myABrCmDjsniSP8+5CbuxzzLfb1kv1PkNb+Si
         VCXQSbzSaqL8jqeMos+FzEaq0X2soPPsWf2uXY9IzQ8Za1WByWbjbWg09taKbbCO0Ykt
         Fc4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ziepe.ca header.s=google header.b=LKWHjCeN;
       spf=pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as permitted sender) smtp.mailfrom=jgg@ziepe.ca
Received: from mail-qv1-xf2a.google.com (mail-qv1-xf2a.google.com. [2607:f8b0:4864:20::f2a])
        by gmr-mx.google.com with ESMTPS id r11si304842vsl.2.2021.08.20.05.34.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 05:34:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as permitted sender) client-ip=2607:f8b0:4864:20::f2a;
Received: by mail-qv1-xf2a.google.com with SMTP id z2so828875qvl.10
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 05:34:01 -0700 (PDT)
X-Received: by 2002:a0c:d6cd:: with SMTP id l13mr1047928qvi.24.1629462841673;
        Fri, 20 Aug 2021 05:34:01 -0700 (PDT)
Received: from ziepe.ca (hlfxns017vw-142-162-113-129.dhcp-dynamic.fibreop.ns.bellaliant.net. [142.162.113.129])
        by smtp.gmail.com with ESMTPSA id 69sm3472288qke.55.2021.08.20.05.34.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 05:34:01 -0700 (PDT)
Received: from jgg by mlx with local (Exim 4.94)
	(envelope-from <jgg@ziepe.ca>)
	id 1mH3ii-001q0s-MH; Fri, 20 Aug 2021 09:34:00 -0300
Date: Fri, 20 Aug 2021 09:34:00 -0300
From: Jason Gunthorpe <jgg@ziepe.ca>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Leon Romanovsky <leon@kernel.org>,
	Doug Ledford <dledford@redhat.com>, linux-rdma@vger.kernel.org,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 56/63] RDMA/mlx5: Use struct_group() to zero struct
 mlx5_ib_mr
Message-ID: <20210820123400.GW543798@ziepe.ca>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-57-keescook@chromium.org>
 <20210819122716.GP543798@ziepe.ca>
 <202108190916.7CC455DA@keescook>
 <20210819164757.GS543798@ziepe.ca>
 <202108191106.1956C05A@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108191106.1956C05A@keescook>
X-Original-Sender: jgg@ziepe.ca
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ziepe.ca header.s=google header.b=LKWHjCeN;       spf=pass
 (google.com: domain of jgg@ziepe.ca designates 2607:f8b0:4864:20::f2a as
 permitted sender) smtp.mailfrom=jgg@ziepe.ca
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

On Thu, Aug 19, 2021 at 11:14:37AM -0700, Kees Cook wrote:

> Which do you mean? When doing the conversions I tended to opt for
> struct_group() since it provides more robust "intentionality". Strictly
> speaking, the new memset helpers are doing field-spanning writes, but the
> "clear to the end" pattern was so common it made sense to add the helpers,
> as they're a bit less disruptive. It's totally up to you! :)

Well, of the patches you cc'd to me only this one used the struct
group..

Jason 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210820123400.GW543798%40ziepe.ca.
