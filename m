Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBGETSTWAKGQEZCUPBRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F862B966B
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 19:17:13 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id w8sf2542347wrm.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Sep 2019 10:17:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568999833; cv=pass;
        d=google.com; s=arc-20160816;
        b=QRHwWb3rSSJHEADgkfmHlq9K1hjhSMnnHc0ceGS30KVap864GhdZ6b8esoa84f3iLI
         Z3K4gpD7q63XgyT+3uuRenF0Fmn83JI4OcDC7wksKNKfNc0UoQ5OfzCiqGu/uNtGYams
         8iRAgabP1LHqL77FO+RFDptaFvogyiXKMnghbFwMxVZtrBE9OCeXiMFncSmh6ViQ6y+d
         SFjpoAqkzbXkmA2mvoS5lx2aPREyYIXup/WMyB5W9ewSDP8zD6u0us23F88mQdAEdKoh
         ZgJKC/jiV3k5iLBWSfGTakD6cQjSsIl/o5M5OaOcS0j8D8uedUTk/jrIEVCfxGTpK/qF
         Kv6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=NMJTBu2pL4D5enjx7DjPzEhAF0ZcHiig/jIAWAp2x44=;
        b=nYz+vRHLxZoBoGG4r56595P2g5UlRfnyJmKONGilxj+2Hu71VkdhxNvruKGa3GFz0g
         1U3o0QmajbDk2C8+aPVZxDo8URHMKyOtmw3AaSats1C2Z1RmEW/pifIe9wfJa1CzzO0h
         Sf2IYpVubW9X9uO1XQDWQfCCR9GxbmvJKf4IwOEPoEOIlj+NC+dREBJSj+HZqC6bgLEp
         o7jBrUtBEzcyIPCtWlDx2UVcDgHWlya9TawKtdWwwLCVOObeGT3ChYZeFBmPTHtLyNaK
         ctYS5G1LJF5uZzhULbdNz5UtyMMg2erWydwn1dD6Uf8fuqivbW93PHuzTx7p99Eln8Mi
         uDMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tFxJYmQ3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NMJTBu2pL4D5enjx7DjPzEhAF0ZcHiig/jIAWAp2x44=;
        b=ldUT86leUaYUeF80AOkNLPKPRnXI7CVrNrrOHvZLf7JkjeWbNQBOH0OWGbKePRNWXD
         0T+yRQ5bg3fRKT/VXUU0bseme92vfc6yOTbdydTkid/B1l1auEWl4LByLzJli94skRnc
         mpoRctlUsx776oHYo8G+bw9+8sJ97amzDfJ55s8q8/2jj9PN2uWrTa0V3Asqohn0kJ1K
         E8/5uq8A0SnzEu4t7CV5tWJvDB7YbQUyuyITAvMUCyKt8TB/I3xwyFh+d6BZ/b4QDGyd
         nKXt40AhNOMY+Uw1DSuLEH6FmjQX10KEfSqKMfUOu3m4QZy4t93NDVOgLrS3baydEfIR
         6zTg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NMJTBu2pL4D5enjx7DjPzEhAF0ZcHiig/jIAWAp2x44=;
        b=QyEoqDPjTF9NZHPBJyDK0q9nEsCqNnCFnNfGU/Fe2nrbcOJzH1g/U0Er1ZnxUG2hTu
         UAzDqEOzwvXXa6/FWneT1pV9UpVI4jhaJ3WhKpyDo0+qWaqyT74NjXRdz9porR7a2s+1
         zGAM/SoJOmiuhOtxhNBgPWF1Bp0lnE+Di6F1Vj86CmTyX1o3BImQaXr8Eb6NmUkriwCm
         bj4hblZqgfE3Rs9Y01R9Ajx2fi8LC43OM1aXHPeZ6xhsmopCg8eRblFplMPsYB/eKxX6
         W4MFqDS3d+BSeICwFDldPVik/jq8K2M0NNbn6xPrfw2atLygr+1b30fvuQGNqTdTKEEL
         hAkw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NMJTBu2pL4D5enjx7DjPzEhAF0ZcHiig/jIAWAp2x44=;
        b=HsfprNtOhekXNht0ZcUZgz4p4ZYq53WxYuPm2V0KQq+vE9NTdP9tSRFxLzVLoAGZth
         ftn2FExZbn5iETtyQOe6bgWDZ2vRgHJb202EkJaYDJ8yqjBbzUdbgJrDJCkR9uf11O9D
         OSlJ1IkCWwwaT9ois2wJQIBBeuagRaAsD2QeY1NEJNu8lcrhm5UXerbfF1j+P5Bwse6H
         m/PIeItcpQVqGvs3Qmfn/FTGLJh57yGE0frZ25lXZeFmLsAyuAIr13Fm6ALSijl1yBCS
         P1nGQAZBWtLeUAptyuhm7V04BPRltKNa/p5kYUsJ9G0q5RlAOonK/jeHfwEAakPxOBZR
         rZZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVutyH4mLO53RdZVJYjroqbKfoZ9J2AjFqEAVbMogFlo7nF2YTr
	Snz5b7+KFY44qS+PpX91Y8Q=
X-Google-Smtp-Source: APXvYqwpbw49aZwSNj0NJo63Qk9s57zdhyGZDwJftqmW2U5CwHvReKwJe1DdIcEuibOEcAlCSxdRQA==
X-Received: by 2002:a05:6000:a:: with SMTP id h10mr11833141wrx.226.1568999832909;
        Fri, 20 Sep 2019 10:17:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe43:: with SMTP id m3ls2072582wrs.4.gmail; Fri, 20 Sep
 2019 10:17:12 -0700 (PDT)
X-Received: by 2002:a5d:66ce:: with SMTP id k14mr2154568wrw.258.1568999832528;
        Fri, 20 Sep 2019 10:17:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568999832; cv=none;
        d=google.com; s=arc-20160816;
        b=hP+qNAXZL92MzgjLWxdMuU5dOTuNH6dUNtD65DzRZD91bdA0Shl6mvfVOGUX3dnGG/
         U6NQVWlArvdCB2W+jbO6klirNifQqd42MfczfJAZqbJAC+ceiwNMmFz3CwXyXk3XL5+8
         P0C6LN85ZpD9trQgVS7t2VVUWKol6sQXgUy8Y3J84lEe1WHfbO0BWwXeci4hBqnCbnTr
         yhRkAGNq8U76tLq7XyJgFJ/3AqpRsArTU2QPCd6UcPwzCPyZVqD1Okikx3/mBj9hAHdY
         QQqGZJTObkGcWUQdwxPbtFnuNyyBR88pQTpYG4iyIBxX0ln+h8AobCJpODHgovtbypu8
         AzDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MAXIjagVVmgonNnmQANm0Oi+OX97y6W0ucvlA2vaghE=;
        b=WM1Qm72v8l7SCQkIXsyq5QDewVtXE+nHCVjtySXz68oCqQah/8cCxFypT5D9P+k77/
         owL2SCkO+Kgn8SkWsljWKyT6Bueb0C+XrTyvV831yL5R69QL5C3moK5Ql286bD8b+0N8
         ofaddom3DigU+52VPiZnlOp0/DqPfjckCsvxQgXhBj+EpsWNTD4qzPE9H/i+xvHJHGlu
         R8lpQ9t9aA7n3gcrHAc1xkF3KInTByPMGPyOA0QaeqdMGb7m/9US+1mv7xuBlvY9qRMw
         EuHbQcntGR1ZIJuYOWTpn87/1U/qaVJ6FhRS36Hc2Z2QKUYiCc7jlL1YnGS1ZXHHES9p
         c68Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tFxJYmQ3;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y3si177037wmj.0.2019.09.20.10.17.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Sep 2019 10:17:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Received: by mail-wr1-x442.google.com with SMTP id y19so7553285wrd.3
        for <clang-built-linux@googlegroups.com>; Fri, 20 Sep 2019 10:17:12 -0700 (PDT)
X-Received: by 2002:a5d:4a8a:: with SMTP id o10mr7901983wrq.201.1568999831956;
        Fri, 20 Sep 2019 10:17:11 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id i73sm2621906wmg.33.2019.09.20.10.17.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Sep 2019 10:17:11 -0700 (PDT)
Date: Fri, 20 Sep 2019 10:17:09 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Ilie Halip <ilie.halip@gmail.com>
Cc: Michael Ellerman <mpe@ellerman.id.au>,
	clang-built-linux@googlegroups.com,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] powerpc/pmac/smp: avoid unused-variable warnings
Message-ID: <20190920171709.GA58520@archlinux-threadripper>
References: <20190920153951.25762-1-ilie.halip@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190920153951.25762-1-ilie.halip@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tFxJYmQ3;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Sep 20, 2019 at 06:39:51PM +0300, Ilie Halip wrote:
> When building with ppc64_defconfig, the compiler reports
> that these 2 variables are not used:
>     warning: unused variable 'core99_l2_cache' [-Wunused-variable]
>     warning: unused variable 'core99_l3_cache' [-Wunused-variable]
> 
> They are only used when CONFIG_PPC64 is not defined. Move
> them into a section which does the same macro check.
> 
> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Ilie Halip <ilie.halip@gmail.com>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190920171709.GA58520%40archlinux-threadripper.
