Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBU4NQ72QKGQEIB3TT6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id CC0DA1B6143
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 18:48:20 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id x1sf4419951oox.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 09:48:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587660499; cv=pass;
        d=google.com; s=arc-20160816;
        b=Dwt7B7U0SRPwmAWda3kReLcytzOGlONYnW3hoY6lq4CBCS9NWmfYgUF3yXkeRdnyAY
         IOw7/w1FTiWCxHbG6QipBxmvxS734dCxyjYTOFexfr26AH3HsgqEl2fSMXXREWIqY9at
         I2odBxkx6+9PerRT0QF/n80VW+3nEd2aODJJlhKZzc0be+axZDAT1suVykCezs2OVu+8
         U6p36dguz61/d2th8yetQ/bknMvRIZMwaeFRGqRFLBMd0ZwaDmhCu0jmnrSKuskX87CO
         onTRuI5k20RnjRegYmhtTRCp/E2MeS5yR8+jGzG1HcJOidFMm5k+ooNIj9hfK3NzSogm
         mN1g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=1fOocHqZZl6ZRPV5U4HycowgVEpAR+ganPYhpp7dNwo=;
        b=0NYi5hqjX3d4T02cplH7EVmzyODktKXHQgFVQin1FAuW1Nl1UHzc5uGVFY8c2D9t9a
         uMxMtgABI8yg5eJYx6d86xS0HmTlv4jkXwWM2S7xs/pIYGxGHmOKLG5FaEncQYAtL0Lf
         dwAHuA2jgT4TcHh3LqN+GJ1/lSkkgJ5cz+gQ6fdM2Aqz5hsdqDoB5nBQ31PW15AUwaok
         k1OE3llnnNIB+d5qdvBm/kpisCIRXrEvnmuZtpJOIBLeCq62A6b7I5REunI+gtDqemiy
         5plZyZlfwMry+X89H5KGSa13jERbTWpW6ujjb2vN8pjXTUBdc560h8Dl9vrH7ZOA+lK6
         lZdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YelSMpK6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1fOocHqZZl6ZRPV5U4HycowgVEpAR+ganPYhpp7dNwo=;
        b=KcsFWUwLfjms+G0UErDD3N2DZKlk/Z8bJeXRM14aGrVgOTI7QCMJupLTEnOb/lznIo
         r/IAU6LV4XWDSbIhyuTywOthnT2xS5aewK/IiMfVNzqKsqku6GP4a2MpbJkm9sotn17Q
         uui3yBWwYuY9qWuw67CkRUXcfn+HQ3S9Ytkqme+bbCJnllM6kGbDdoomQUdiv2Oo9znL
         ff6Z6PCvcimOWMSDxiVjvKWyy2EVqG75phBDrb0qjwp3QdQXf1DEwOd+5Ma4mR5BpZVJ
         e/Lt2WE1ztDrubTnWZTpYAkYbkPnY72kDCDSBIE2bsPLeIxvq308P1q4ezMh+Nw7bY/7
         xt+w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1fOocHqZZl6ZRPV5U4HycowgVEpAR+ganPYhpp7dNwo=;
        b=fpYYeRsx1q92Y5m8YVT8nKDYaeo9TbpTV9IqGf4cZ5f44F/74Phnrv5N0J8o3ZEFyM
         r/EHpQZa23Qb5P8Z018H6jkBS8jvDCbAGaVYV2vMyrtddx1V1wsJSDARGlQm/GIXQbl4
         VOKGPDy0h4Zuhe3qeKos/bzhxYNeeFsiVKpHh8nwLc6ooMU8GnOEYdWc1WBKvAEDzu5R
         vniJjuvfE/7dxbMiTTzbwiobVFP3e+w0srMALGXj54M8UidhILcnYojFlnt4hTgmv9B2
         xuxqKs6bL7Yz/oe35NL8RsS0bhA1gD8p1IX+LPtdo1OTw3ps+qS9CJ9w1BrVEcn6hseQ
         vsCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1fOocHqZZl6ZRPV5U4HycowgVEpAR+ganPYhpp7dNwo=;
        b=H5jsRmgo/ZghmA+N0iC0RejYL+eyCP87QOAOIrUx4OPl+S2ZVp9a8Vd2KLNapLIRMB
         PcDQkb1q6AfaB4bryixLnxy+nuELGtcCkHy5+g4zjflSeU32r0esttcSyeWpVHAXq4Rc
         PdMjSmI2oQnCJzqcICahJ6OujRp38lvDnDIL0+IaxJrnTyqPtYb0cTBxfMR5jja31gsf
         rAKMnDCQyXQaB5Tc4B+rbTHTR5K5UzI9zmt+KHc2vlOjLjN/os6OmJI6C1IHCd86C1wc
         NABaCqvP6Hs7CTJ321EMPCxS/nqIakyIEvrXyYPlCRcDk9ghhtKxBxA3nuUwDEaY/6xj
         93qw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubCTbkgd2nx14osoYGD/MyvHtKCQKZTnv0zIPejwImdhepZLRWf
	npRA+ScCJOUXdK8J+/QpsDA=
X-Google-Smtp-Source: APiQypK3JgXq45EJQ8Ps0HcTxw6u/RI8I4rUNq3KVwQNZTtZHWZP7Eg4OveCWRjp7A67B6IumKc8Nw==
X-Received: by 2002:a9d:10f:: with SMTP id 15mr4212989otu.350.1587660499303;
        Thu, 23 Apr 2020 09:48:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:1b0d:: with SMTP id l13ls1094897otl.5.gmail; Thu, 23 Apr
 2020 09:48:19 -0700 (PDT)
X-Received: by 2002:a05:6830:1303:: with SMTP id p3mr4392143otq.186.1587660498930;
        Thu, 23 Apr 2020 09:48:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587660498; cv=none;
        d=google.com; s=arc-20160816;
        b=YT4Q+9yeAQdWDCcIIGUxmn6XddMcA1AZjdj9ezZs0IgUVA/dh9HKCiilDOYMMIj8zH
         +Ac66pFp9mMFjg8WF0OroMD0vB5v3FR51ZfA0Dv+QJJ1cxNvEclYCFKVSPtrhmlzV7dm
         r+Zm2hWpzgvmyrzFXo1UnrufZlAZijpyrnI9BCpGduSFGDJQhBhs71OwC4KjpUmgGNdd
         tnW/Wn9LwKbzksPIHpGsm2StA4ZFuriTcYyZtRnhkYWauLy6zIL2JrT+/PCSmAnvMNEq
         xL96i1XjKmJsfCyQI9OZgXja0REHnlp+8Pu/vc6kwcPfmeQJZj70XcYl9370G/lonK4t
         nW9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=bh0M22ljnn7wAk7TqVlJbCHIzOAS6jwjmvuWuteywQk=;
        b=pu5yQeEjOuWKWZZsnwnJQX4fs6QBIkialRd65B0D8YJ6HUmvLLNqJa6v8x3e209P8Z
         2EyniW6kptofSuDMUbeJi2Lty1W28eBJv6/uRFOgqOjqrT5Iv+R7y7xv1nTom2UFXPo4
         LwlKmTJdTe1tLbXgczIH1TDGlzdGDKavzftVn4Lbp4CLxKY2lI4f5yKxgRIacmLmkewN
         L7tMymWlGsbjGuJoQ99+QkrAcjrOpiMT0cMJyrQYvliod/TDxUjMW2Cdq8wZ1YgcfckS
         Kq7VXIRBivdsTQZv25hNEGpvpnNiu/prySZ+HkbGYHTvKpeTIqTBQhjeAUWAe7UGogw1
         SYXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YelSMpK6;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id o6si440690otk.5.2020.04.23.09.48.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 09:48:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Received: by mail-ot1-x343.google.com with SMTP id g19so7208393otk.5
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 09:48:18 -0700 (PDT)
X-Received: by 2002:a05:6830:1d62:: with SMTP id l2mr2441949oti.316.1587660498522;
        Thu, 23 Apr 2020 09:48:18 -0700 (PDT)
Received: from ubuntu-s3-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id w24sm799343oor.47.2020.04.23.09.48.17
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 23 Apr 2020 09:48:17 -0700 (PDT)
Date: Thu, 23 Apr 2020 09:48:16 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/4] kbuild: use $(CC_VERSION_TEXT) to evaluate
 CC_IS_GCC and CC_IS_CLANG
Message-ID: <20200423164816.GA12996@ubuntu-s3-xlarge-x86>
References: <20200423142354.312088-1-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200423142354.312088-1-masahiroy@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=YelSMpK6;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Thu, Apr 23, 2020 at 11:23:51PM +0900, Masahiro Yamada wrote:
> The result of '$(CC) --version | head -n 1' is already computed by the
> top Makefile, and stored in the environment variable, CC_VERSION_TEXT.
> 
> 'echo' is probably less expensive than the two commands $(CC) and
> 'head' although this optimization is not noticeable level.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
Tested-by: Nathan Chancellor <natechancellor@gmail.com>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200423164816.GA12996%40ubuntu-s3-xlarge-x86.
