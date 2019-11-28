Return-Path: <clang-built-linux+bncBDY3NC743AGBB34J7XXAKGQE2UPK5UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 07F1E10C317
	for <lists+clang-built-linux@lfdr.de>; Thu, 28 Nov 2019 04:54:25 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id x1sf11474614vkc.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 27 Nov 2019 19:54:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574913264; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vb3d7Wrm6SuH4AdaX5mOdGdK5qWPaz/BQmQwZKvTYGWJQanWhrkAsznOVVjlOISTWD
         br/LqkiHalJ9WReX7a33VoTQ5C+wlk1aIbZzlN5QPGxbGeyS+5UncWDoWX5uwT1qN+Dj
         vOZYzszAZOuUV8lCGRMI48jErmFloqK8QLgR/iOu53L6Tj7KCtcIEWXlKFuh4GDHTUZb
         Ic7pRD9wplvRnWsUl8qaxSOLise3y1PuxPah//xf0OFOkmS7TAzCECQfv0jQaOr2YSwB
         xhJmmB6K+FzcArqaW8mpivVS6OO5FvSKxLD6v5Jjh0eevVyiTfErxHVwZhdwGHwpy2m6
         mWAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=BG8dFZ+fqxqzRzXPzadRIV7qP/T5oRLrmnzWG3yhMSA=;
        b=AzBuGU4tJ1crjnJUxjMOOuXsqG8SWOe3fZfUMDACZvQcAEOqL70G0CBVbP2xULjVmc
         M8b12P6x7htPvgmncMcUGqRHvyScLzN1sITgfUIWBOc8xjc6QmRE0A9pl4S2+NLZD7GU
         2KOWhyBnETbFW8So6/TqFCugVmN5sa7zdX1sLKgM3Ho8FgQ89CK229L71tOZjt0DVj68
         4lFrjOYG4IB15jLu8jwOpcKS6ilnQied5E/n5tZsa+O+7z6xBXYsBcc9Lhk4zIugnUJX
         Rh/67xYvwxf50/aTGl4OCrV4rQXWnJ20saLyq3IPgt1K7AAWyQF65Q6ikJ2O5e0bO8Ta
         0uXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.10 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BG8dFZ+fqxqzRzXPzadRIV7qP/T5oRLrmnzWG3yhMSA=;
        b=gklsrBRoZ6CaDy+G3AJtxexom7N5tNrclfQiKvm65mwscewhNx+2zQuWmpsA0eFY+d
         oe/Psf4cCax9irYKbfjytV5Wh/DPMSnwD0hr83TCWGmynJk1N1Mymq1fXOuHNpviWWRo
         4abGxFXu5UXuBT5pCd0u7P7jMd1DC8ID1oT3Im3ivWTDfR2EY96l6h6/VxJ1cwjsju/1
         5s0PC5xlVWTMb7XS0S6rWDj2IxuwMi7jxFQEVYS3PJkhXuaL4ezpbplwhoGqvqJLsAtc
         txZp2WuRrMt5aTEjqCY7qZDP5lDn99rDQRSbwL3EA/Hk54qaWr9qckNvu0/9M2hKSrGH
         nSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BG8dFZ+fqxqzRzXPzadRIV7qP/T5oRLrmnzWG3yhMSA=;
        b=nxfNUWz4siJmKNxe6YUoNw4VgcugMiuQnV9eXm66HzZWlRb/CBboSfYz1Jd93GAwbt
         jLsFYKv+h5uEX3q2brsWNxssm0wSXv8noIWIU2/9y+PyTD75FgGJCoF8GRfBVdq/MGuY
         1w9WmFVhfL29L1kn4kOGp7FkqaMSNE2t547VWDDclITzo7tG04eunsEKfx6T2KvgezI5
         PmLzi+4WFyZGEqu8cBK0IuluvXENL+998v2PgSaSPLq+exJRd4LqvvybXjWIgeNxqAEi
         oRlmkxwykezkszIXeXU0uOzkswat5U+MZ5xW8rRo1r2T3b1Los74VyC68qWM5hEAkeWa
         AWHA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgaq82y9TT9D2qBzxG0cpafFQTW9c3IwY/eiT8/vB02yDgz9JN
	FZ3nJu1IPchPfZSNyTLhghw=
X-Google-Smtp-Source: APXvYqxH9QF6mJaPe9LPjyU0Y9hLoNXD6L9sPEYVd1t4BH5CVP5ykNSyjIhqTdiSj64l5IquI5+8iw==
X-Received: by 2002:ab0:2794:: with SMTP id t20mr4792736uap.109.1574913263906;
        Wed, 27 Nov 2019 19:54:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2eb0:: with SMTP id y16ls87582uay.11.gmail; Wed, 27 Nov
 2019 19:54:23 -0800 (PST)
X-Received: by 2002:a9f:3772:: with SMTP id a47mr5012918uae.53.1574913263510;
        Wed, 27 Nov 2019 19:54:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574913263; cv=none;
        d=google.com; s=arc-20160816;
        b=qKJmBzKykCcjjKz6AU7i8FM9oeRkmI3IoujcnjXCq4f3xRtOzLJeXWWHHYmgAtXLP1
         tb3PAUq4bwbMzmJH0HQp3+cYSzO6Is5R8XuqpKR23GVlQHPQA3GLeS5rwKw5/NuuuZhh
         75KUkz3u67MipFnmH/PVQ72E8nfI7GQ6jycAwMOhqJTjhbuzEcamP/dk9LAxY2R2Jc/4
         wTX2OobbL34OL8wGZQghv/XpCOLPKUDYmHdeGPnc4yQHuyDvaQ1iyZGb8HSLEzeBZPot
         yUENh9SJaHq3AsBZrP+X/ciPFnR6UFODNNGMoJPpZ6eYL0eRAZhe4YN8pW01DjGNdTV2
         UVKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=WhUN3iAUZYNhDUJaXF3fzwe5GfThyvoo9va/gqbGdHA=;
        b=rPiwcequyzFCiZUFZwlP2KVKBzRbVmqnspCvvyo2InxaLcXBvpAwsUGzSan5mSTcVH
         27xsFZFjnNBzGZ7hmo+qkJtkuPGmLEbn9jdklXeIqwOf2qfua5vzPnmo9xYMONCI+9yH
         YptJtPrfemE2OHvs6eMrT4/+y50fE4bi8rYMZjySVk4OD1WJNmce+gNVw5QKWSuuClhG
         Kl+9pUwrNe+Mz7L2mDBa2mYxULoNkyGHzfedk2FuIRZrkdhN0lEG5QsVcR/MQUYZ3oe3
         iZ3QaY+/cse8BR4vy29ZI0CVompEBCXc11RY3Pkzq8hLFouz0T7pR0rewZeclsxn1rt5
         PYNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.10 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0010.hostedemail.com. [216.40.44.10])
        by gmr-mx.google.com with ESMTPS id f22si809678uan.1.2019.11.27.19.54.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Nov 2019 19:54:23 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.10 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.10;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay04.hostedemail.com (Postfix) with ESMTP id D0883180A8128;
	Thu, 28 Nov 2019 03:54:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:355:379:599:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:4250:4321:5007:10004:10400:10848:11026:11232:11473:11658:11914:12043:12296:12297:12740:12760:12895:13069:13138:13231:13311:13357:13439:14659:14819:21080:21451:21627:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: cord05_261e104f2dd33
X-Filterd-Recvd-Size: 1920
Received: from XPS-9350.home (unknown [47.151.135.224])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Thu, 28 Nov 2019 03:54:21 +0000 (UTC)
Message-ID: <d02f4eef9aa674cb36c1d90069a13e7bd02b7e40.camel@perches.com>
Subject: Re: [PATCH RESEND] wireless: Use offsetof instead of custom macro.
From: Joe Perches <joe@perches.com>
To: Pi-Hsun Shih <pihsun@chromium.org>
Cc: linux-wireless@vger.kernel.org, Johannes Berg
 <johannes@sipsolutions.net>,  open list <linux-kernel@vger.kernel.org>,
 "open list:CLANG/LLVM BUILD SUPPORT" <clang-built-linux@googlegroups.com>
Date: Wed, 27 Nov 2019 19:53:55 -0800
In-Reply-To: <20191128033959.87715-1-pihsun@chromium.org>
References: <20191128033959.87715-1-pihsun@chromium.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.10 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Thu, 2019-11-28 at 11:39 +0800, Pi-Hsun Shih wrote:
> Use offsetof to calculate offset of a field to take advantage of
> compiler built-in version when possible, and avoid UBSAN warning when
> compiling with Clang:
[]
> diff --git a/include/uapi/linux/wireless.h b/include/uapi/linux/wireless.h
[]
> @@ -1090,8 +1090,7 @@ struct iw_event {
>  /* iw_point events are special. First, the payload (extra data) come at
>   * the end of the event, so they are bigger than IW_EV_POINT_LEN. Second,
>   * we omit the pointer, so start at an offset. */
> -#define IW_EV_POINT_OFF (((char *) &(((struct iw_point *) NULL)->length)) - \
> -			  (char *) NULL)
> +#define IW_EV_POINT_OFF offsetof(struct iw_point, length)
>  #define IW_EV_POINT_LEN	(IW_EV_LCP_LEN + sizeof(struct iw_point) - \
>  			 IW_EV_POINT_OFF)

This is uapi.  Is offsetof guaranteed to be available?

Perhaps this is better without using another macro

#define IW_EV_POINT_OFF	((size_t)&((struct iw_point *)NULL)->length)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d02f4eef9aa674cb36c1d90069a13e7bd02b7e40.camel%40perches.com.
