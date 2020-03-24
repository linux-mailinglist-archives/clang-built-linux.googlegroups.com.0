Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB26F5HZQKGQE6O62ZSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id C23EE191A36
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 20:43:40 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id g10sf6480818pgg.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 12:43:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585079019; cv=pass;
        d=google.com; s=arc-20160816;
        b=eEtSso0kTQvAf5v0BzdqjCAc4N9sixphPRWeio7brn9jaKFG7rsCqYW3bFEDCruW+D
         yFPMbrPeXwop0Lhiz7uGj9pic5iFlN1ko9gW4YaD0J0vOyiXYqmED3KxEX+1wuaer89v
         Hd90wm1jRa0KnGEH5i/ldDh1IVxVEk5CrIz8vZnelrcngKf5cDGYXI5pskTWHP+clT8P
         5ZfluTAmNLjWmCiP/zJ7vwQN+caOoRUBt1Y0U/hM+hMj5KAvZcvRO/pYLJtCMijyVWYg
         k4VVgT2a78i1el4hq0IVdKYkRWgSo6v3C8pqdj44d8KrLIO4dmkEQue5Rzjpv09/+CDB
         e+oQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=w/ubvsv0wkGZwx/Hk1u4uv12iGPhJ5vTx3NH+3mvLw0=;
        b=LqWPDdhRloy8WFk2wNvKS0w/m+Fyku6jPpXh4JXK2ZKWVbjBPLbDoqLMfZRb9G/9cj
         H+5GeQGlYZWJIglb2FdTH4RlrLzBYz1SFHwnp3hwbFzOLR4tk29yKvX8eG1H1AOCjFYN
         LBHTMuoCDrChameGu6M07Eq7CuC3ugdbI6wnDJ+56mGxUho0z8xBr+J673nuM/7lM9fu
         d5SwPymPFm2AsuFuEjIpT0CPs1gwsiLV7OwoJ2AIO6USiOYz/qSzNEhLfN75U8BpjcCC
         Vnqi66tErAbT8ymOm0rmZlJVeCpcJr8Ip/pURE+AATC4NqtUPcCdtJ5LjjA67ZQYJ5aB
         1lHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruDc8Suv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w/ubvsv0wkGZwx/Hk1u4uv12iGPhJ5vTx3NH+3mvLw0=;
        b=kEQFkWzHT9rCuyImVzOdnLko49fQFew/yB1198xbNVJIQ4jcnIYUQ4qIifTxvr8ugJ
         P+YesVuapvEBpSpBIHIXf0YCgeqonftCmKjknEVzXkkY16sEl+HO9eCfuZKzsApmd+8I
         Bqa7eupCS1bqyvgM57Iv4GUbQNIyn15/1EXel2M5EMTLNTp+QinxQGHKesPvl6aROSW0
         IhsTBpttw/8Klh5rui8v/zxNiWYCaORUHBE8fK+yvo/XxrtLew7KJjpsxG3l8rjyuYR+
         TANX2DejEp6IMxPa7gJ+Rjc070JAPOLkXIowtxtvIDr/OmglNso7VfQU5PdJsnxHgFH1
         w13A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=w/ubvsv0wkGZwx/Hk1u4uv12iGPhJ5vTx3NH+3mvLw0=;
        b=WVBAg6g7v2MNkXwD0lpMSgJhAiNY+A72+JGbnq9dDU+Y6Ng/ip4INma1y3ORQVZoUW
         MV+deN7Vyuoqbd7zEIygUX02POh71/eBX2kRLCGNg2+2UAyl0Jc8Bp92Msp6OA2NtCpf
         sC09gHFWKWLLVohq7M5JuZJxyqb4vyUvldqwAsSwv4MdhBcNa8DRbr9+4YHwqVvTsm8o
         k45JrxkpKiR/uBHLJnrUMPgpEIIwmHSy563R3id1Blmyu0hL23YP6uRI5nJbtj3Mog0d
         hMSSX7jjsTVEJxkG1j6TVnYXs3js6fddn+wR0Q9XkY77LHfacv8U+kJknyvJeRzR4bgc
         pjEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=w/ubvsv0wkGZwx/Hk1u4uv12iGPhJ5vTx3NH+3mvLw0=;
        b=mRCrW2gl5oTM8aLRBVVHWqESC4hOLww7wNuYgdWZ3YQmDu888JA1PZntcGoAT3hd6z
         kyZrm5fi8+QeQiokHciX++IqXNQ5xQcMXb1O6RhI7lFt2TUbGld75MwAW6ulEw9FQ+fV
         sQanzE6/StQGD4Glx4t6GWSjh40ofYnLElfYlAh8xpoWqPmcXapiopuxV6hMT8T3jdBv
         TJwESQZxR4+RPWEY6rDFrndT5ZJi7uCnqkUkp2LDtnK2AjKMw77ErTxnpU7Rv4GL4gYU
         bCfFHMj9cLaaraO969XIzhJJK9fyFnmlIJSekxL4S2W0HEUsCljcnDZCpSGWIKZXxk1C
         ItLA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3nAjOpk0MtEOgv/6LPf4D/DskHwsb+ctphD2o3fKU/ZumPtFtW
	oZZr5ey1HjoMsdYVsc+6k+I=
X-Google-Smtp-Source: ADFU+vu/9VGv/GBr2pZf+gbYvzlA/8V6vatk4wpvsU9+CRnfb54Xan/guWlSiMnVrntNUSZWTWF7Hg==
X-Received: by 2002:a63:7e49:: with SMTP id o9mr29656337pgn.80.1585079019535;
        Tue, 24 Mar 2020 12:43:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9416:: with SMTP id r22ls2617004pjo.0.canary-gmail;
 Tue, 24 Mar 2020 12:43:39 -0700 (PDT)
X-Received: by 2002:a17:902:a5c4:: with SMTP id t4mr28965566plq.242.1585079019059;
        Tue, 24 Mar 2020 12:43:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585079019; cv=none;
        d=google.com; s=arc-20160816;
        b=aGDNodIRs5NMxfZ3/rc+P9W1JBcPtWT6r6tIOKTovt1aH2uL7dFAZkEIvmB8bS6Xmi
         SRrzlHmji27JeTpTYetEqv8uzZ1Iu6BI4ouMC+2pv7lfopnjf6CPYGygXEmyT9JI4T+9
         yGnIK2ieGT/BR7ZFUCF8oAG99kS9sJEaZw32A2pyM0ZQzCuLS897WuORWXZz9EPCk8ep
         AiKQgO23NX814yCNyPdckTAH7yVKxTBm6A9TyWvz8U3UeGCxjaDl9hGTSUmX5SvXDZ+R
         tL7xqsEQumKnQ1gVT9iYdV8xOwUzKEqNIubPgB84mcX2ov5TFU2LNVWKw4fDVZHXABcl
         YwfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=v0Lb179Xsvu+pLNHsFIahOHyMAoUJr1uLEfB5vqXXMM=;
        b=ggURYbfTA+0KvUDAMRRMHk8bDyY7ygiz7rIHHw5rblqB8cgMMSJN+JkU4d+RSrmmLi
         dd0PTFeDO82Yf+E6mUh9LdwJv3UTMwdmRJayPc28tDVbg+loi8HUC2Tv9cQVkb8aZ+SQ
         oYe4xwhGuke5nFAVdnJVjNz8cFhPd8juqpHrtujr/qvmfLfZDc+U+DaHBDSNNCFbZqg8
         Pi2mZKo6VlWRCwx3Mqky/cjLsN6wou5yqElSrbj4O52bV86cMEUFWXnwi3daTuKe+tPR
         UVD52A22+Kpu/mTA7Hivj4JZEgfb3JoQ1+hlaGMLCP8CTSPMgZLW3A5fBynDSHpj+Gkm
         ZB6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=ruDc8Suv;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id j14si1109241pgg.1.2020.03.24.12.43.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 12:43:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id w13so19704410oih.4
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 12:43:39 -0700 (PDT)
X-Received: by 2002:aca:b5c3:: with SMTP id e186mr4511758oif.114.1585079018625;
        Tue, 24 Mar 2020 12:43:38 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id n20sm6360504ota.54.2020.03.24.12.43.37
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Mar 2020 12:43:37 -0700 (PDT)
Date: Tue, 24 Mar 2020 12:43:36 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, "David S . Miller" <davem@davemloft.net>,
	netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
	Michal Marek <michal.lkml@markovi.net>,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/3] kbuild: remove AS variable
Message-ID: <20200324194336.GA15310@ubuntu-m2-xlarge-x86>
References: <20200324161539.7538-1-masahiroy@kernel.org>
 <20200324161539.7538-3-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200324161539.7538-3-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=ruDc8Suv;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Wed, Mar 25, 2020 at 01:15:39AM +0900, Masahiro Yamada wrote:
> As commit 5ef872636ca7 ("kbuild: get rid of misleading $(AS) from
> documents") noted, we rarely use $(AS) in the kernel build.
> 
> Now that the only/last user of $(AS) in drivers/net/wan/Makefile was
> converted to $(CC), $(AS) is no longer used in the build process.
> 
> You can still pass in AS=clang, which is just a switch to turn on
> the LLVM integrated assembler.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324194336.GA15310%40ubuntu-m2-xlarge-x86.
