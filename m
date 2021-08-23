Return-Path: <clang-built-linux+bncBCTKRTXYNEIJNQMQREDBUBERE23JA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D37E3F535C
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 00:26:37 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id q9-20020a170902dac900b001304f704413sf3213920plx.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 15:26:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629757590; cv=pass;
        d=google.com; s=arc-20160816;
        b=Hj5qM2eSoafc+GuwtSn7a6xm/ko70jdZYAsUZFcNTKzgBXBnMg6KYj+21qIEZUCq4a
         aAz7qpc9ZwnAOy/6H+gHQt7eB8iLfie3rhFAtjyDfSVB3f0naDlXnYFIJ6Zfiz79dIFc
         O5B+5wvDlEgJv8JQgJGVVz4jE86or39Cn1/Uz0BfrPbLhR0Ilo+Jhiiy1SopDJ4qEmmw
         tZeHbkk8FL3oU4l0tlhY2pOfI9rir9k/X7ZoU0RflFrWzdJQNMJExQFS1Ghe2Mju5Af+
         ksjwRXMF8XaCW/b5+/sYA1X6zkUI+ik+6PxHzjTlL0nkvUS1e9wlawEhtCgrJQbMrMNk
         oUyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=FKi/fTVLspSWT3oZqW6EdKiYEt07e/fLJW6mCMJQ/3E=;
        b=ckj/wV5uzVyvLard/1aYA62zeSDkzpmI8d541cKIWzQB4a8BLNEn2CtZ9vkDatZSCR
         yrqDdpYeAQKDwFwHtBShibu5FC9LptrGXxgr9EZpKMnBN95ma4Zem6rmfB/XmZdN2a86
         nRxTAew8uaPayGdeqWTfd/Wjg7etO2ZTz1M7pVZOt/Pc6ggnk8uhHmKR7MD9HRbjRChd
         4yrtINfn8SmtbgNNewjg3Yjr4neM2G844sQkhO+LjDdDMf+73f4TRHhbvbB0tLrDUMvR
         1FPLLBUqPuNC8+SkOvazS90y9STTITM1Kw2NfX2/EY++WTFPVmGviZu/70Yq7Usufs23
         BdOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=FKi/fTVLspSWT3oZqW6EdKiYEt07e/fLJW6mCMJQ/3E=;
        b=igXlkFqkz+bNtdAyYQnvYzpkkGwCkSxqqeXP3zciErKuvHuKidCZP29pnTKcCrnwf+
         QlF/UwkvKr5vcG7th7xB1Eo5guyp25+mACQ7oh9261LL+qvYezRgdaGvkMaF3ahSKoLU
         cHC3XKiaYzmAw7RODUdx7wbvlgJR8lXxIjsXitM06pXBWdGCG8hlef/x5tASmN/3+RmO
         Kb2XI6g5Bt1s8w9QkjjpggvXrreDMpaJfveJsXq2JSZYnLH7lyvfWWNZLCy6IJqbqRDH
         2OcS0fPSmfFKPcI4tb4tc27owYEtLhG/XLYmUSniwxU47tu7SYRwIJRE8cC7D2kSGVqY
         4cwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=FKi/fTVLspSWT3oZqW6EdKiYEt07e/fLJW6mCMJQ/3E=;
        b=TurW5gyNc3l8LvG0FuraonC25Kv2HFR89EagjSSc5XwZt54IB/O2N3YY2v7HiLHE4j
         6i+IYCVLr/HuZb8GM8KOOQRo+ek1R1u5V2BOUFPdw+/uNETUtPfauM4Ap/ICby6P7VW6
         SPZP3ViwsuvaHLZ4ryGJU1xOdwfCgInSKyV3SKARiezNL8vHLGcYDbTNJdC3LNEC69nK
         wlI51alJRLThjMyeCL9Pv8Pw3YUQAjxyZvG5cnb26SXonodPq5a+QWkNnBuPJRh9IWGO
         bn3npcIO3yk38hL9C+11K5wvMvRyUWd0yU//+DENZbM3vundRS7AyJ3f/Be8EYf55sEa
         6GlA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RQbLbBqzaCcTmru4wzVqa8Ej/1yNU4Z1j21QbdG4ZBfn9QuJV
	Bb+we7kjvOG0KMHSuFu6JSM=
X-Google-Smtp-Source: ABdhPJzWIeKGjxpIjEAPkA6+3hDQRk8E1ahvJVz2BKzi4xxokPF1cSbmHK7LKG5e8Ll04VY7gi72gA==
X-Received: by 2002:a65:494e:: with SMTP id q14mr34033854pgs.314.1629757590580;
        Mon, 23 Aug 2021 15:26:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6802:: with SMTP id l2ls7750541pgt.8.gmail; Mon, 23 Aug
 2021 15:26:29 -0700 (PDT)
X-Received: by 2002:a63:8f4a:: with SMTP id r10mr32557379pgn.337.1629757589900;
        Mon, 23 Aug 2021 15:26:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629757589; cv=none;
        d=google.com; s=arc-20160816;
        b=ZYlZpHKv8ArkUHFmVN9TVkaK8UachHYEd1dnEYRs1If2DInB3fa3q0xfBv+YHTonxF
         8WbSb6ze5DrVtBd6O7Lt+mkHk6A1u1l8HeAENFGVtOz6rbS7SawPEKzG/vS2LW6d4hBW
         oStRiGzHYawaBOWEOcXZ47rXIG0HFWLPXQZo3y8n7k7tiquZzb1lmvZb5VViuufGDLGl
         63bBO+rtSR8WZBHBgLnUlgUmjbp0u2Z6jjV19dJO8dsL5bCypKdjKngSU98ajf8fwkmO
         oIIb1wD1/99NtfRwTpsVbBmvdRtdV1Jm92LHPOBoY1GyACjbGDk5avFJQZQpOHGPtYdJ
         BPeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=K6ILgDxJsmP4PkgfieXJqDWp07ojkzQLgxx4UHvVM+E=;
        b=QFK7yx5j80cHwClJvflTGELP/xVzDHC9e+XGnYVdj4p5sSJ10nxy5Y3Ye0Vdfr1iWE
         XMtwhCs/qHyWoEs9dLcWKnhc/pUSEpbzIkDCfsuEnhShdPa68VxrvvB3BVk2Wqu0gHBD
         6Zd5MbY/PaBjV0JArB/Se9eCrYY4bsy50AwJwZM/h7cKb8ugejeENWBqvoMfY+RhKOkI
         64IppzkK2sCBv/Hb+zpOa68Y/GFeMdC3aPw3TroN44Wb7EVIAnD3pvCSYD5jcHKYjMJ0
         Dhp7N/s8cpNlCap4kasDw9Byu34KZIA5XXr83xilOMxJ9HR109eLy1YyLr9p3Lu5MRhd
         PkuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) smtp.mailfrom=fw@strlen.de
Received: from Chamillionaire.breakpoint.cc (Chamillionaire.breakpoint.cc. [2a0a:51c0:0:12e:520::1])
        by gmr-mx.google.com with ESMTPS id 136si1318036pfz.2.2021.08.23.15.26.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Aug 2021 15:26:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as permitted sender) client-ip=2a0a:51c0:0:12e:520::1;
Received: from fw by Chamillionaire.breakpoint.cc with local (Exim 4.92)
	(envelope-from <fw@strlen.de>)
	id 1mIIOf-0005pk-Qx; Tue, 24 Aug 2021 00:26:26 +0200
Date: Tue, 24 Aug 2021 00:26:25 +0200
From: Florian Westphal <fw@strlen.de>
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>,
	Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>, netfilter-devel@vger.kernel.org,
	netdev@vger.kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel-janitors@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] netfilter: x_tables: handle xt_register_template()
 returning an error value
Message-ID: <20210823222625.GB23869@breakpoint.cc>
References: <20210823202729.2009-1-lukas.bulwahn@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210823202729.2009-1-lukas.bulwahn@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: fw@strlen.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of fw@strlen.de designates 2a0a:51c0:0:12e:520::1 as
 permitted sender) smtp.mailfrom=fw@strlen.de
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

Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
> Commit fdacd57c79b7 ("netfilter: x_tables: never register tables by
> default") introduces the function xt_register_template(), and in one case,
> a call to that function was missing the error-case handling.
> 
> Handle when xt_register_template() returns an error value.
> 
> This was identified with the clang-analyzer's Dead-Store analysis.

Fixes: fdacd57c79b7 ("netfilter: x_tables: never register tables by > default")
Reviewed-by: Florian Westphal <fw@strlen.de>

This needs to go to nf-next.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210823222625.GB23869%40breakpoint.cc.
