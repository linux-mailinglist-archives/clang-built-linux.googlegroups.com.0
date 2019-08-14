Return-Path: <clang-built-linux+bncBDJI5MPT4AIBBKH62HVAKGQENTB6YGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 45E368DFFE
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 23:37:45 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id k14sf151248wrv.2
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Aug 2019 14:37:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565818665; cv=pass;
        d=google.com; s=arc-20160816;
        b=U16VMIXmv6lwYLCdOKYMdtTKI5Zi1eGpu3JvYYERf0QBLQysl8MR9vRnvUtb4UK2Vc
         uq8Aw84XT1ptuPlV9ALMhP8iVXAcqC0vCVBKmausiGbtq6c0eCWhQ9hZDgCnVtG/Rp+Z
         ByK/dsRgLRgZtXQNAEymezd4OBWlw9c9rnWSfa/fOSCIaBEEwgjE8sd0taO2I2iGQvjr
         FMpDd6Djqo2fJ01Nn3vOxPJzCbbHi+S5OFTlPOtHME1Zd8MYhhourXjpoa5kCVYVJFOE
         g7uXg8cPEgxvvK7FkEJ16RnxW9XjbQALrab6sV1GXI4qjMNkCiCE7spgQvzRXYoMPVbw
         lGBw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=paYsIASRseaJNZ3a+lXFPhHHQ/jrGjzlwBBdSDryAAs=;
        b=pmJoyZDD8EJgq5rk1SK4cXW+K0DIbnIWXDcmHQ2q8/bneenZmGtVDgz//iDbnOF9bK
         P8stZjc0BIwartiJPP0gzQhr9twsMMFdhf5u+9mKe70fcNVlhq6ofYTmBx4aCy7esRd4
         8PWcGJtlpwhzZAIuAleOGp3ZabAYY/Y/DL15ZpaEcCEEk4tkMGuoMJKZBsihWvXhA0gr
         0V+FybcXPffMfpvODNu5n0wKHfghfsYBWI3wI8dCn9Yfn1p6YEVjMGpMMoXWE2Hw8TVc
         GxPw9C26MIgTUvAsyM/YJKIWcREkcj0cgYiAOwXhfrvoGxb2D2Hbuq+AghdqfOb9+Nv7
         nyZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=paYsIASRseaJNZ3a+lXFPhHHQ/jrGjzlwBBdSDryAAs=;
        b=MxX2cl2c0BBxeNtYASnjkuXjZtlYM2skCFLmXEFKwa+SmAFsx8bAnRkPNcwnIDi4Q8
         F0JXnrhncovjUqzlyIKa6QptXNFhiqRHHsXfoRD1J4IykKtNKkMm/Ji3W6qVSw8g3mQ5
         /XL3Ewaki1bozPTNfXppXlC8n38ACa64EAXb7coi5j27xmSC6ZnqMcH/cIjY/T5iWNLA
         Y/i0OzDlFOWGPfl0mePacMADFYJ/FAiGzxjrfhizEcvtUMTwRtyPBQWwBG70ay6fgQlu
         SznHJRbiHvvwn45gWK7cQhePY31nzFVnZTmla64aIoo1ghMXkFX1EhUjrlbZrNz9I/fU
         C/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=paYsIASRseaJNZ3a+lXFPhHHQ/jrGjzlwBBdSDryAAs=;
        b=KpdMpGUPkLDAnRPiQohz0P9OQUT82Nw1+v0u/G2fYfrpVNgFyaA8sOBY0nhG6kNfMr
         tSZsKJKdXcbRndNZvQbYWtcj8fgFuvRUqHScpNtoKQ5Tc9dn2wWdGVr6tSsUCE74tU6T
         FKR5aY8IrdSVZHAskYkkVcERQp7vpvUwYDtjnivPtHlU8iwCJHT7FAImTgIokbSEuOOs
         zby+wv8Ux1Aen3zsM0WPzXL8tj7umIlGNyJzCY20c7CicZwfhVkIUCOc5A/TkHmk+3cG
         06Qak/QAYuRpjpKgfQACa64vhUfdO1yrZZM6V0z4uU7dVozMgkEpRHkRAQDVDuk1l86G
         NgGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWOLGKzX+PeS++GJdBMJY4NHqOBrkygJPPrsd9JBGSST75/mZik
	SRXkAuE2281eTwx5+iUg0cg=
X-Google-Smtp-Source: APXvYqy1TX8/FZCdriuElPV4mafCLslKmWAGWlUfnpH4Jaz+Pn5duzoP/GCpO1rnYN+GLAgKpw1BHg==
X-Received: by 2002:a5d:51c6:: with SMTP id n6mr1744889wrv.206.1565818664974;
        Wed, 14 Aug 2019 14:37:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5709:: with SMTP id a9ls947668wrv.12.gmail; Wed, 14 Aug
 2019 14:37:44 -0700 (PDT)
X-Received: by 2002:adf:ed4a:: with SMTP id u10mr1813908wro.284.1565818664399;
        Wed, 14 Aug 2019 14:37:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565818664; cv=none;
        d=google.com; s=arc-20160816;
        b=EjDkFSUB1xgrsTlQFGk2d9XRiD9J0xMoveW7uCsS5w1qVnt6YGhM1Q/4nYg3+j2Fv+
         xdZRYX4ZVVaMCjpFcOZObzBtZify3Wn/dMNpB6n3z0VPQeZOxUAclYk3vVGumGwUQCbd
         bv6zfbJ08KkCI9/e0OI34GIee+n0pITnNiJ/lk+k//66QrpRiLpK6945JJLCeaKNcxoh
         P39Pefty8lTIjaS2bdOhjph4SpBsaTQ4H3RGQrPKQOAM+QWST1Z7S67Rc6frHFNo+2vk
         lrKj5I2K8FGwRsLQsaPqH2iXqWQOXVN/VrxFF5wOKTgQ7iEEPKhicBETLlnnU3w1/SoV
         SwAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=IeZTVOqGP+wB3f/JyvLbqeOCKiqyYCdHj7nmvBSCwtA=;
        b=Hr+0RCyVo8lbrY8OpvGRhTtAWCmwmhNwBeS5VCp0jpVQ8m4Fv2ipIt5FEy8qLahTZg
         TXHYp1CWbZYSTGdXtvdmirejlIUmX+m0LpXHH+w416Sn8CMUmzHo3AlqO6+eWesD3C15
         KSVKH/zWL1KaqsJk7+YGoFlsLIOMGcDaNxA0Zwgs8Iy4B2ap1yYKb1mwBYE9Qqb6KvMg
         yyb+DexGILTyqBiGgfdxbq5ixOhmc94HXlaADNs5yKJNdimk2pD+ky+NDPm9tKJ8242D
         KvUZYS+P6qZRjjeTzcTQGjmgv8u91jPSf+F1xYA+SQ5/s9AK8qKa9ogOgANTjRGHKezH
         7yfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
Received: from mail.us.es (correo.us.es. [193.147.175.20])
        by gmr-mx.google.com with ESMTPS id r13si59501wrn.3.2019.08.14.14.37.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Aug 2019 14:37:44 -0700 (PDT)
Received-SPF: neutral (google.com: 193.147.175.20 is neither permitted nor denied by best guess record for domain of pablo@netfilter.org) client-ip=193.147.175.20;
Received: from antivirus1-rhel7.int (unknown [192.168.2.11])
	by mail.us.es (Postfix) with ESMTP id 2E47DC4140
	for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 23:37:43 +0200 (CEST)
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 20AFFDA7B9
	for <clang-built-linux@googlegroups.com>; Wed, 14 Aug 2019 23:37:43 +0200 (CEST)
Received: by antivirus1-rhel7.int (Postfix, from userid 99)
	id 156ADA58A; Wed, 14 Aug 2019 23:37:43 +0200 (CEST)
X-Spam-Checker-Version: SpamAssassin 3.4.1 (2015-04-28) on antivirus1-rhel7.int
X-Spam-Level: 
X-Spam-Status: No, score=-108.2 required=7.5 tests=ALL_TRUSTED,BAYES_50,
	SMTPAUTH_US2,USER_IN_WHITELIST autolearn=disabled version=3.4.1
Received: from antivirus1-rhel7.int (localhost [127.0.0.1])
	by antivirus1-rhel7.int (Postfix) with ESMTP id 06DF4DA704;
	Wed, 14 Aug 2019 23:37:41 +0200 (CEST)
Received: from 192.168.1.97 (192.168.1.97)
 by antivirus1-rhel7.int (F-Secure/fsigk_smtp/550/antivirus1-rhel7.int);
 Wed, 14 Aug 2019 23:37:41 +0200 (CEST)
X-Virus-Status: clean(F-Secure/fsigk_smtp/550/antivirus1-rhel7.int)
Received: from us.es (sys.soleta.eu [212.170.55.40])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: 1984lsi)
	by entrada.int (Postfix) with ESMTPSA id CE5724265A2F;
	Wed, 14 Aug 2019 23:37:40 +0200 (CEST)
Date: Wed, 14 Aug 2019 23:37:41 +0200
X-SMTPAUTHUS: auth mail.us.es
From: Pablo Neira Ayuso <pablo@netfilter.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Jozsef Kadlecsik <kadlec@netfilter.org>,
	Florian Westphal <fw@strlen.de>,
	"David S. Miller" <davem@davemloft.net>,
	netfilter-devel@vger.kernel.org, coreteam@netfilter.org,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [PATCH] netfilter: nft_bitwise: Adjust parentheses to fix memcmp
 size argument
Message-ID: <20190814213741.ptoel7373xqwzlj5@salvia>
References: <20190814165809.46421-1-natechancellor@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190814165809.46421-1-natechancellor@gmail.com>
User-Agent: NeoMutt/20170113 (1.7.2)
X-Virus-Scanned: ClamAV using ClamSMTP
X-Original-Sender: pablo@netfilter.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 193.147.175.20 is neither permitted nor denied by best guess
 record for domain of pablo@netfilter.org) smtp.mailfrom=pablo@netfilter.org
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

On Wed, Aug 14, 2019 at 09:58:09AM -0700, Nathan Chancellor wrote:
> clang warns:
> 
> net/netfilter/nft_bitwise.c:138:50: error: size argument in 'memcmp'
> call is a comparison [-Werror,-Wmemsize-comparison]
>         if (memcmp(&priv->xor, &zero, sizeof(priv->xor) ||
>                                       ~~~~~~~~~~~~~~~~~~^~

Applied, thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190814213741.ptoel7373xqwzlj5%40salvia.
