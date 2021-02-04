Return-Path: <clang-built-linux+bncBDTY5EWUQMEBBQF65WAAMGQE5J54DGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id A74C730EA57
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 03:43:14 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id y22sf922621pjp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 18:43:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612406593; cv=pass;
        d=google.com; s=arc-20160816;
        b=aPwhpgcZXsn6jpNZnHwG9/yktWBMJ0LKCF7SY0/ax6EWLMSMi7FgGJfxbT0cpw7WBI
         cuE3T5+pV1Tcp03ESfcaRNyGcRrfyZyjrrx08S4gyqSomKimX4G2cmrq/Abu70oFUGOU
         AGKVPqXDsePDC63Hr7oMoCRtup+K8jykDQg66Yqxno63WIY7xtteCMyaiE2oUZ0NjX/Y
         1JTTL9yvaGEma4jIPHN0DEC1YY8lU+k5rFbRKhSUWVKKsA4QRZFtedFcrwCbJUtdtw9G
         tWLiyRmFbLVCOKU63kwkxz4t0ovdzRaEBsb5w7jzPW3YisVcSvqlzLg+5Zkt820StIv5
         8wMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=W7PUQKuL4TTOpwJcu58efWTBMDcaZo5HG2X2kJZPNaA=;
        b=IRVuHeFRLFVQ2ziDSSxbe8M2juXw9LvGtbxmNIMPVACt98uURwAXO6RprbD24ZljAA
         w2zYvL+dkZXOhCwpm47jtUoEMWWbhM3PzmQMZezUkG/hqxZWc3ZZ445/TqE2B7izytCR
         SxfnUZRhMVSXodERhETnIQ9DdUd+8n52qSpGAZGyBSJTX3qT+3EjGffy4czG3qr0r/ZF
         n0lRzKq0BIu5YlMFl0RsZPhKnN5/IsJe0fCHqIjRlfFPgoeoDrzGxrHYsPx7nOR+iADu
         FwL5LuHlVxLAqz5IVJMVfUH/m5s5Z1sp0/6ETwnVPgTKZgwM/2ckDrjH1vmY7D0COMV0
         XWxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=W7PUQKuL4TTOpwJcu58efWTBMDcaZo5HG2X2kJZPNaA=;
        b=czvjUi06UQCAHcpf37sFfqN9EHjSgos5RIquOcfFqKLWzgoznOe/5V+4cNZkaWlPXw
         Jh90Z2Sp9ob08PfhiXh8u/sctQ67Aen/WRWYMenpXOnJPrgrFR081SUMVWyFWdpEBYuZ
         29aMZexkYeLzLjKe/mP0rro3QpDmRTp0W4VW7o2afek80YdlcMXROqh83ESsZwmMVel+
         qqvxRw0Kx++/7FO25qMguQDotDtFIJvbhzboQQc8TVNnvp0LQ8muBOKDWAUhRbMIERA+
         xWTyvy95SFRUYxPolWA5PL1+/ZeC4QGXMHOF8Hw4yYT2gdE61AARO0LuAhZ2BTU1nsWD
         a9Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=W7PUQKuL4TTOpwJcu58efWTBMDcaZo5HG2X2kJZPNaA=;
        b=H//wDaAboTq7wAZmkBaBdSd52usZ97tziUsFajzj73TYJ22jTt+ip06/M2kcdV1JQ1
         284NHrbe8so4f+SeX0DjiC/FvdMVC/Z782jHkC4k/ktqHI2EEcggp9Qh6N/UHD2oCBLr
         bK9LhkPW0OO/K5mallJXTV4Ax6O4RXemzMw71NOSQ5ORYi4GrTz1UNdSAoNcvTsyA4kQ
         3bwoDaIu6R+/iv5WY+59giaDOcsL3jmxyZFqDuQD2ZXCLIjYyQ2yidcpAfP6xqNxL4RK
         Ta8XFAGu7UiVXN93SljgU71p+jykjSl7WzTP/2ecDCa5fC2a5cZCch0DuKGGgbucBREv
         qv8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530u0KJg7ks1gR3NvsrU81iph5NKkm5bDKJepQhGubt/TK9FSQAP
	SjGF/YQvR6JT7P17cZp6asc=
X-Google-Smtp-Source: ABdhPJySADdAExAooA5gLgXpjEkAs3ofauL8KZR7B/xnd9rTZFSMBV0S0ajr9OUxHibvgPfM3x9X5A==
X-Received: by 2002:a63:1626:: with SMTP id w38mr6637518pgl.278.1612406593286;
        Wed, 03 Feb 2021 18:43:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7904:: with SMTP id u4ls1758188pgc.11.gmail; Wed, 03 Feb
 2021 18:43:12 -0800 (PST)
X-Received: by 2002:aa7:8605:0:b029:1bf:738c:225a with SMTP id p5-20020aa786050000b02901bf738c225amr5938562pfn.7.1612406592321;
        Wed, 03 Feb 2021 18:43:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612406592; cv=none;
        d=google.com; s=arc-20160816;
        b=PNRjaahaqwrWAmZJFpnTV+m5J5kCUMvBypqt5QyiL77TbXNxB5whfiTE1wWnXGC+j5
         F464U27j3dO6MkQZ5KI0K3zbhNjdkraHUb11GSCrNCisCoXUC1/+SrENDBlWN9zMu28H
         vZA3CI0+WItfZX//2EqZrPZEUNUCSvJIYQM3GmE4QdeZiSIN0bQ3kQKfXHmLDupTRnhH
         31a7LEMLe38WrJwychOaUK10Z96zTDIdlh6DK9x3Pm7HCMYW3u4cfckJihcSBDYtlkyI
         TirVAWztecSlpd4yAqsmRRLchtG9zyvRjxzbcwjY4dTjcVHAWb3sPLsCCRd8sQhCXZ/e
         +XLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=czAW8fw2+iJhcjqXaxE30uCu4BSSfWe5TEyYWRsrNtk=;
        b=D5jdmTM2IC87EuLsMPNCluqv7wv/ZbKzc6Y1z7DhUBqUIWcqDvHtzaku1Shx5eQDZd
         Z6GCVL+jRJqMsXrHjcEdIs6fW04XqV/HpaOaYapLMaq+W8ZN/K0XK+gAsU32FD1/Qcwg
         DEXs1ViHFykTL9bbNJwLvyaC3BQPApp2anIrs4xjkO7JKBIX4fecGxASEEN8kEW5C1cw
         8lTas2BXl9Kq9t9UdB7ObvauyVEuRdl0wNDXwk4i2ZvFWfydPvJt/ewQAPR7oCUdQkuq
         K4/UdJVijGi5F96SfmKpzobxBLUwwRzeeuDstylgbzq5LK5TkCKIR9LsL4ju8+SGTGE+
         kvlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
Received: from fornost.hmeau.com (helcar.hmeau.com. [216.24.177.18])
        by gmr-mx.google.com with ESMTPS id p10si206945plq.0.2021.02.03.18.43.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Feb 2021 18:43:12 -0800 (PST)
Received-SPF: pass (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18 as permitted sender) client-ip=216.24.177.18;
Received: from gwarestrin.arnor.me.apana.org.au ([192.168.103.7])
	by fornost.hmeau.com with smtp (Exim 4.92 #5 (Debian))
	id 1l7Uba-000072-C6; Thu, 04 Feb 2021 13:42:51 +1100
Received: by gwarestrin.arnor.me.apana.org.au (sSMTP sendmail emulation); Thu, 04 Feb 2021 13:42:50 +1100
Date: Thu, 4 Feb 2021 13:42:50 +1100
From: Herbert Xu <herbert@gondor.apana.org.au>
To: kernel test robot <lkp@intel.com>
Cc: Thara Gopinath <thara.gopinath@linaro.org>, davem@davemloft.net,
	bjorn.andersson@linaro.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, ebiggers@google.com,
	ardb@kernel.org, sivaprak@codeaurora.org,
	linux-crypto@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 01/11] crypto: qce: sha: Restore/save ahash state with
 custom struct in export/import
Message-ID: <20210204024250.GA5482@gondor.apana.org.au>
References: <20210203143307.1351563-2-thara.gopinath@linaro.org>
 <202102040442.I3XzFSaf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102040442.I3XzFSaf-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: herbert@gondor.apana.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of herbert@gondor.apana.org.au designates 216.24.177.18
 as permitted sender) smtp.mailfrom=herbert@gondor.apana.org.au
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

On Thu, Feb 04, 2021 at 04:56:17AM +0800, kernel test robot wrote:
> 
> Thank you for the patch! Yet something to improve:

Please fix this before you resubmit again.

Thanks,
-- 
Email: Herbert Xu <herbert@gondor.apana.org.au>
Home Page: http://gondor.apana.org.au/~herbert/
PGP Key: http://gondor.apana.org.au/~herbert/pubkey.txt

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204024250.GA5482%40gondor.apana.org.au.
