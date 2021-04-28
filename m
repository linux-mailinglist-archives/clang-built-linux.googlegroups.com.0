Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBSWHU2CAMGQE7YSZK3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 17FEA36DEC0
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 20:04:59 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id p133-20020a37428b0000b02902de31dd8da3sf26055364qka.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Apr 2021 11:04:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619633098; cv=pass;
        d=google.com; s=arc-20160816;
        b=L3zAIcII7DlhvSqyvpgK/BU8NW8ZZ4mtZjj/p9EqTDtZIS9Ou/7snmgqawK13chPEm
         DTd8fi35LXgkPxPPiDSVPZDQ6XPbK7b4ibh5qVE6p2yvcM3xd1b3izu2H7PbDMQpqm9I
         ERKGob3UeyZ+e2xGmmXoVCDbiVRp3acXBfXgPWW9AErjy/Zx5lIcGUn/FQXPqRe7IheT
         qAgswoRtCsyw3cxCj8fs+DuhXhv5HxKsnGCr4asR7O9J4E3YyZBZ5sWx8503IhfGH3VA
         nM6+49WRH2V1ppcie4Sn0VQaO/YxIVlfGNLWAVQqMggRnEcmshvCSKG1LZP9bheBXsBr
         P+TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=8pszVYHnaa0B58PPvoOtEbaOXnY8KrKIZqGvxXNyhyw=;
        b=h2/P+BQ+/VnxQNSLwqpod+Qdayxz9FDvVfa6iWBUilVJ1vSB51/DptkrOr/9mLwqBk
         B/ezsS+e8NDvkQfxaTz5+x8BmKyv7B1pQ0ByXlTsb+isfcgBWGp2WqGWKai8bArcthPM
         zYj/QtHchuFCafD16NV0FNt73sKn9d8EQtr8vKOvKyrnHu+Jg5r/b95Lja/B4YnGCj+o
         caRMHGpThgGdu80tox3sjqMW58MUSD4ibc68mnq0Lv3d0asXvgIskrVLnDc7n9Z+oium
         HPkAgeO8yVrDAx/ivtBbA60s3/q2ypqpmsuW+ekFJkzj/7NGlIFvO2WDQNWLVgjAwJ6B
         p23g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=T6gMkpAG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=8pszVYHnaa0B58PPvoOtEbaOXnY8KrKIZqGvxXNyhyw=;
        b=KuBObN+U4aTu6aMZ+sf7JGPoI6PXIloOaVyjCXnYsUgeoNJpxjQCwF/ihGW7lzCzFb
         ieBKi0Tm4m8mkFjeXs2S7X+dPjNNh5IAZlxpULMlZ1RdIZt+rQ9hOLEGFbzlpEYF8cX/
         GdwG8MStauYIZOsliDOC0Mta06OtWcrXgVH7ElJ1is+L/XdgMIcdsZteASTEe6Ou8z24
         s/beNRzCENfUk0ePDvCaiz/X5TTgIDTiHr44pOI4hhE8hWokZx2sUFyDhJF7dYde52cy
         Hj9C/28tMSvq5xwSycEXurbYZACbD8hE4JnZ3+ztwwUlZbT/bmJMqkx9PzbqQD1xG79R
         qCPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=8pszVYHnaa0B58PPvoOtEbaOXnY8KrKIZqGvxXNyhyw=;
        b=H3FRzQXAGYA5w+djHksrn2b7SttTPrrZk8drYS45F9cppdSoT7L5YPByvadCo9VRLb
         Kgkm/Dfk50QO0mvvQwBtYX3weoWIT1LQTUZT/u+W4IIENZXrRN6MtYdyVTqYQ9c6UlM/
         VCnP9WT1ZGwt6FQBFNRNHA/87CIquu63yE6/D6vnhBZAtVSMxncYtV41/3CJeN73nkB0
         0qUUIIYhwYsEnBS2Z9vdt+md5AuNTe+qLOLp3uSQnrFZol6BLRfkPRfvzwNhw9GRctLH
         NZFoFamL/zda7+kjSlx+jT0HHMNAoElaeac2WQqJGia8TEBUjrb1gfpcr/w0kS4Ycr+t
         lyEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337DhTE8G0iWl+GiN0enf+MfF0byaFuO017DMjKky54QDwJLt7D
	MP8xkB05+oSNa4nCtW7C94E=
X-Google-Smtp-Source: ABdhPJzRIxTESw9nXEbHrbH0X6FCnQO59gQw+YwDLc0llccbjrVJkQ45BsdacavbC3aaTpugDagvjA==
X-Received: by 2002:a37:b685:: with SMTP id g127mr12830136qkf.42.1619633098202;
        Wed, 28 Apr 2021 11:04:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ae9:ec17:: with SMTP id h23ls271586qkg.2.gmail; Wed, 28 Apr
 2021 11:04:57 -0700 (PDT)
X-Received: by 2002:a37:5604:: with SMTP id k4mr29281271qkb.478.1619633097775;
        Wed, 28 Apr 2021 11:04:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619633097; cv=none;
        d=google.com; s=arc-20160816;
        b=Ss5WbQdjwJcCzgZHpUysHxFj5GtLkK17zBbNlAyKyxuWotYWf+WYjhtuPps38QgXJ/
         XjkKP1aw7DoQFNsMToUxyXrfpPJxkX4V15PFv1vcCtHBycdpY2lWX3DSsjKKxG+YQ0ZA
         C0zJItnaI3V7X6DYujfZcFyH7iBbOcVL48XNJpe+TSS2TudUYBD1UFPMYHZmQfqpTxYR
         HerXkD82ld1nUt4eiYddxRcpDZThqwoHOrMRK/tWhxc+mByFs0Jub4W0oV4LBGYljXf4
         //YaL8iDCHwCUnHdTJBLgwa/oxjn3zs/G9gbZ91NAuMnVmI57cNHuWDpZBI1u3G4rlG+
         hGxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6ZdLn69SOeKmLKQgjxgT++SaMngBH6ptFzScUP/SC3k=;
        b=c99WTtFOLuYF74fu7SSK6BpJJ/nWyFAEAXdSSYG5fF5Nr1YJbJut/q473GZA8XXq+j
         TGhqi3HozEBMCx7A+prcG87m6CVQdIZhWuhCq0GG3hfzhETiBZKdzCQ6uHJck3zfgW2w
         DxXFATwnKzmHDHZ8gegzv8KaeJ0UWEz2IK+HPNgFsfKSVY8YIiYkwORdZx+nEec8kYlf
         TOzVUcPZSnLOZT/50McadTRCk0AxPftRmXBgmyr5/d7Da00F5DHwO2jVmp2HYpRk8Kue
         736cYiJIbPjokuGz4VH/3p67/jXygLDMiPykQX93Fmsm3gFsyZgR5WjZnbCpfHxod2vy
         KhRA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=T6gMkpAG;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p207si69405qke.4.2021.04.28.11.04.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Apr 2021 11:04:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 79D40613FF;
	Wed, 28 Apr 2021 18:04:55 +0000 (UTC)
Date: Wed, 28 Apr 2021 11:04:51 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Marcin Wojtas <mw@semihalf.com>, Russell King <linux@armlinux.org.uk>
Cc: netdev@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: -Wconstant-conversion in
 drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c
Message-ID: <YImjw3eypUdhkp88@archlinux-ax161>
References: <20200417004120.GA18080@ubuntu-s3-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200417004120.GA18080@ubuntu-s3-xlarge-x86>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=T6gMkpAG;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Apr 16, 2020 at 05:41:20PM -0700, Nathan Chancellor wrote:
> Hi all,
> 
> I was building s390 allyesconfig with clang and came across a curious
> warning:
> 
> drivers/net/ethernet/marvell/mvpp2/mvpp2_main.c:580:41: warning:
> implicit conversion from 'unsigned long' to 'int' changes value from
> 18446744073709551584 to -32 [-Wconstant-conversion]
>         mvpp2_pools[MVPP2_BM_SHORT].pkt_size = MVPP2_BM_SHORT_PKT_SIZE;
>                                              ~ ^~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/marvell/mvpp2/mvpp2.h:699:33: note: expanded from
> macro 'MVPP2_BM_SHORT_PKT_SIZE'
> #define MVPP2_BM_SHORT_PKT_SIZE MVPP2_RX_MAX_PKT_SIZE(MVPP2_BM_SHORT_FRAME_SIZE)
>                                 ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
> drivers/net/ethernet/marvell/mvpp2/mvpp2.h:634:30: note: expanded from
> macro 'MVPP2_RX_MAX_PKT_SIZE'
>         ((total_size) - NET_SKB_PAD - MVPP2_SKB_SHINFO_SIZE)
>                  ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
> 1 warning generated.
> 
> As far as I understand it, the warning comes from the fact that
> MVPP2_BM_SHORT_FRAME_SIZE is treated as size_t because
> MVPP2_SKB_SHINFO_SIZE ultimately calls ALIGN with sizeof(struct
> skb_shared_info), which has typeof called on it.
> 
> The implicit conversion probably is fine but it would be nice to take
> care of the warning. I am not sure what would be the best way to do that
> would be though. An explicit cast would take care of it, maybe in
> MVPP2_SKB_SHINFO_SIZE since the actual value I see is 320, which is able
> to be fit into type int easily.
> 
> Any comments would be appreciated, there does not appear to be a
> dedicated maintainer of this driver according to get_maintainer.pl.

Sorry for the necrobump, I am doing a bug scrub and it seems like this
driver now has maintainers so keying them in in case they have any
comments/suggestions.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YImjw3eypUdhkp88%40archlinux-ax161.
