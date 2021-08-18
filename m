Return-Path: <clang-built-linux+bncBDM2L4NMRYHRBS6U6KEAMGQEXCDOWUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9993EFCE1
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:35:55 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id b9-20020ac24109000000b003d54c5cc200sf156165lfi.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:35:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629268555; cv=pass;
        d=google.com; s=arc-20160816;
        b=j+1ih3eUvSZumi04hPC1QoETLhfe+YczJYBZLYij3t8+UjkmA7hJczSqYFJ+FipuHt
         bFmAycP/8YsnBvEqheXz9te13aB/DYthiiZSupYQkiB22F/aBi4zVquGbJ2KjRq5aB9S
         yecvC+lxV/I9aovPesQtCzveYo+V7E301A+UFPt2RTOu2fNgVqONi6vBzC4Y0nhWPXkc
         4R5/Suspi/hhgcRNI8/ectRhdZM1ZD+FqHI+Gj0+eqE8PVjsiGotT/wJfdexP9AfQ6QD
         sdo+9JR+yjPjXVPxhs4D04uNg37OLTBzojxYpS7RcVyBwFpLAcmFr65p1AGXR/c/NQTR
         9fwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:dkim-signature;
        bh=PwadloKFUlcPTICRhhjrvot8sJRJqyZ4atlO3IYhfI8=;
        b=Yza0sywgDUoLFwwxWd8HsOCR9OsJkjDPYnjuHxdJSzegjPvaXxWOWJWdycqOYFzIts
         y8L0GiIzf1tR+XdaQdF1zZKYO9k7/ribDf443js5XimttF0cdc3I4Hhf1m6BZlUE5Cky
         Gj38iZKak3sMXpIIzikFip5ocDc6UzhE3CrP29/6DOtO+cG+5i/HVTeyaFULjlO7IjVj
         Gqzb0QOAKEukAt7KqA+iiotkDJ+dOTyhI5QOxjs3X55B0Wi5Ak5fatWSrDjvMtpTD212
         YuV8Y+c/+14bnT2jG/rr9ejag9EHJZqm16llQRN5wSN/o2V1RCMRZeftw+HrzRi3nL7+
         D2LQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=XDMzVDgB;
       spf=pass (google.com: domain of nborisov@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=nborisov@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PwadloKFUlcPTICRhhjrvot8sJRJqyZ4atlO3IYhfI8=;
        b=DmzGQ1luDghJMpDIlQt2YiXDlm4Bug5xRuuKhSG+0bPq0ZSQ8PaWdtXfrQz/mM0Oov
         R9rKmySpNi2jfF9/GT5sErZ05DmXj2g/6pAISWPvotkNLLGSR2N8DB6zGp1f/iyP2/pH
         baSmYds8/r0cJj2PbgAUstdYq2sa9b2SjdEImxXEq2Rsv45uYcmS7F7T01DqQssKtdvJ
         WFfRF4/+c3rpgA2ldNMUstUWU2IUOfMfaIy7NvtaT5ItmBKwFNfJMNVzJT414T0TDBOU
         42mPXHuDvBUWN91rhm57QzZM2O96IHH7s334Eqj7C6aMwqB4l+v4BGuy5XG1LGRrCXOa
         tNkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PwadloKFUlcPTICRhhjrvot8sJRJqyZ4atlO3IYhfI8=;
        b=L6wLoEELsM7BatifsylnTJ3Vnz24tIjp18vJwiPq3qfnc1VDepl8w56CjUNrI9KR2u
         mUT4x+EjI695bSzZgYJL2QQqaHqxY1T8OAOFQBSvjRIgliXfcZpJ3itj2ASjvvMvCX+8
         wbhceUGljZRv7PNB5ceMruELrt6wKk2xqqx3nhzo5foTY5EkLPXnxKFz3RLCX0/lFrDi
         2xVHQ/QqnqGEnESbcYuEceoiXrn3cjWvmd3Q8YRZNhGZTrP1klnvmgQwMk4lYoqGk/V6
         VEanyEMrvQLUz4kdBaV/8bDcXN+KcVU0qH2IVtU+sTDwVigvhe95xn6tN1RlUI/kL3A1
         rZKg==
X-Gm-Message-State: AOAM533jmlB2flfeNC5nRNpoPMGQcPl11XlSj7La7qvr4IHZL5nND5sI
	mplL+QNp6PXIBN8twOkaldU=
X-Google-Smtp-Source: ABdhPJw8INEtXqCaORqUU8ftTBQTpOxQ5tJI0u7G8BGgUt45yugyfxH3ul/Gcg8YiMVgbpR1i14nIg==
X-Received: by 2002:a2e:8650:: with SMTP id i16mr10205ljj.354.1629268555474;
        Tue, 17 Aug 2021 23:35:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8652:: with SMTP id i18ls169196ljj.1.gmail; Tue, 17 Aug
 2021 23:35:54 -0700 (PDT)
X-Received: by 2002:a2e:9010:: with SMTP id h16mr6532929ljg.484.1629268554459;
        Tue, 17 Aug 2021 23:35:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629268554; cv=none;
        d=google.com; s=arc-20160816;
        b=EosrY15br9NkwGMJX8dPNgUVPIkZbVSAoMOvNxNUN1qEeWcgsc6A6Tb8NugT9w7k4y
         +T0YwqdevxMKqc7FK6RInKW/n2S5pXrF+8MzhMP0Kn9thI7i0P7+zF+QL5tg0p81xrfJ
         /9XbTisqcBmChzydZt6HFKrAdOcFUxbxskY+deCP0o7zt4PUEm4tC+EDYQuONCsFMN8x
         9BHTLJOIhWFmgFYh2ep6HrmPhyxEx9xgVRaG78JJJJ8EcDTZPnXsLrbueo9xqxlquI04
         oh4EzITmP06AbcZgQ+tlg24G18hCI4l9L5Q26C0UDo6ru8wfqJYIMkTvbzE41k3G7WBi
         +llQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Fij3l61/xOvY9xkA2rhC457DvUyZYyMCemEsKNJK46s=;
        b=UeGSOgDDfr6Ri7jpoMsPNGubkASNzZagvHONGFT4xtfME5qJfSeuYrvj7M1+3LOZKf
         cD3tGi0sMuNCRScms4t64eXe6tiGP1jtZEDXZEk9ugyusbX/sIJjy8MwWfaVfq6LM9JC
         v1MytYeoNIB3ywABT6GhVn4vT/11yCMdrpjaEME8+NcuA0/O6/fZfYcSKPViGI7ipgxo
         29GM0nYvGXHD2+u4LhzhwsidBetEN1f1xzu31Ylo3JKvXJpdGqKgun+7M5M0MggPFi0l
         aRS00tqQ+hTgnydqsyAetjsXvGh1suB5GzfqQVby7SADuzXn4uTmY4NuUH8BcoQGRj5N
         X7FQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.com header.s=susede1 header.b=XDMzVDgB;
       spf=pass (google.com: domain of nborisov@suse.com designates 195.135.220.29 as permitted sender) smtp.mailfrom=nborisov@suse.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
Received: from smtp-out2.suse.de (smtp-out2.suse.de. [195.135.220.29])
        by gmr-mx.google.com with ESMTPS id t9si229565lfk.1.2021.08.17.23.35.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:35:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of nborisov@suse.com designates 195.135.220.29 as permitted sender) client-ip=195.135.220.29;
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by smtp-out2.suse.de (Postfix) with ESMTPS id C053F20057;
	Wed, 18 Aug 2021 06:35:53 +0000 (UTC)
Received: from imap1.suse-dmz.suse.de (imap1.suse-dmz.suse.de [192.168.254.73])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature ECDSA (P-521) server-digest SHA512)
	(No client certificate requested)
	by imap1.suse-dmz.suse.de (Postfix) with ESMTPS id E40EA134B1;
	Wed, 18 Aug 2021 06:35:52 +0000 (UTC)
Received: from dovecot-director2.suse.de ([192.168.254.65])
	by imap1.suse-dmz.suse.de with ESMTPSA
	id l0UZNUiqHGGPcwAAGKfGzw
	(envelope-from <nborisov@suse.com>); Wed, 18 Aug 2021 06:35:52 +0000
Subject: Re: [PATCH v2 49/63] btrfs: Use memset_startat() to clear end of
 struct
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>,
 David Sterba <dsterba@suse.com>, linux-btrfs@vger.kernel.org,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Andrew Morton <akpm@linux-foundation.org>, linux-wireless@vger.kernel.org,
 netdev@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-staging@lists.linux.dev, linux-block@vger.kernel.org,
 linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-50-keescook@chromium.org>
From: "'Nikolay Borisov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <cf6282b6-2f8f-2441-d3b8-437ba44b95c6@suse.com>
Date: Wed, 18 Aug 2021 09:35:52 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210818060533.3569517-50-keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nborisov@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.com header.s=susede1 header.b=XDMzVDgB;       spf=pass
 (google.com: domain of nborisov@suse.com designates 195.135.220.29 as
 permitted sender) smtp.mailfrom=nborisov@suse.com;       dmarc=pass
 (p=QUARANTINE sp=NONE dis=NONE) header.from=suse.com
X-Original-From: Nikolay Borisov <nborisov@suse.com>
Reply-To: Nikolay Borisov <nborisov@suse.com>
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



On 18.08.21 =D0=B3. 9:05, Kees Cook wrote:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
>=20
> Use memset_startat() so memset() doesn't get confused about writing
> beyond the destination member that is intended to be the starting point
> of zeroing through the end of the struct.
>=20
> Cc: Chris Mason <clm@fb.com>
> Cc: Josef Bacik <josef@toxicpanda.com>
> Cc: David Sterba <dsterba@suse.com>
> Cc: linux-btrfs@vger.kernel.org
> Signed-off-by: Kees Cook <keescook@chromium.org>

Reviewed-by: Nikolay Borisov <nborisov@suse.com>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cf6282b6-2f8f-2441-d3b8-437ba44b95c6%40suse.com.
