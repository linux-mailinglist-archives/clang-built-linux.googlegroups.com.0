Return-Path: <clang-built-linux+bncBDY3NC743AGBBRG6UL6AKGQERQEL32I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id C578A28FA0F
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 22:21:25 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id q16sf121252pfj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 13:21:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602793284; cv=pass;
        d=google.com; s=arc-20160816;
        b=viTqzZVCKy1lAYnbAZAfF6vVhM3mrI1MmTsEpoEtVuAg/O4/o5BawYgSvJmlr+tZIv
         YY/GhcOGglHFIz5lR2KaYAJSF94TeqZBOdS8RARE59TGBhuOyvrzdeLbAiPbxOboKdQI
         lOliQqHVvzRIvAMbhc1YwXDFPRu4VcXf6NIknn7/IzSXqvz4OMCiJ22vFeVdaaZgEJAT
         SGfH2MQGGH8wn30pyNVyjwzd8cfb27bpnH/lYgZrdR1FbJtzAVlQkQ6uJGQ7IzgrwRA1
         /aLsApDfUThenVhrWzfE0ur7szZofGYiZz2WOhmu1hXlKIV/mCd73aLrrbPSd7B9om2l
         jPIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=UEX6zxSFOQHFeKb7sppz6icj/4kkEbL35mRUiBWLJ9c=;
        b=lvG3n17xgbPrvppOS5w5jbDrS6nBC7k2oIwThA83cKJy2a7vrRk2cskTDHcNcFjSac
         +dRRqXuFDDvIh1Durzw/HWNu0J2VfBgAHuNsL/3lkNqc4v461+A9aFLAgl9bYv6nL1Ke
         2i5zJZPrbVO8MiqinTG/XyFZ1/vvo7jovnc2Vf9iPjuprq6l95T1ymZDa1U02DqOOwHH
         7SZWn/vcVmhydy9PmRBL/uJh5x2WWxGFVx5NIpdh2Qg5HTgNl1n/uLoCkfZPnjmD+5fd
         LfxfhD8Aok9Z4hEJIZONEM9GVxZAooyvVQ7V2nWLIlHCVJd4KNNBsnlHI3xtvduhyNoz
         ZkXw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UEX6zxSFOQHFeKb7sppz6icj/4kkEbL35mRUiBWLJ9c=;
        b=JnHKaGUFhR/jIebbcAVSYx0d0xAHOrnAR4iZuBnKX20VNZMbdTOtRIK3+RsgalSR3g
         SPSX6kkbNN2YEsb36CgkAOFURsYRcV4MP0yii88225CZiI8OFCbDFAvgB2ASPp7eltBX
         BDS5U2rubAjgJDq9c7B6jP6kkeoBp0vto3osFPtifL8J2tBzy2wmedoXsEYLOmBVoZj9
         o68AMdt86rmcYsOTlKqRe1Lz33MlQ3bZMghBdusydbCHGTE3fgXIm1ULlliReDbLp1Sp
         r0/1MkjP1kuSJ/nm5G5yLDDQgGc6u37BXv49sjVzWNE2lINm7vyUy+CUFzm6rr3K2urL
         J1Og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UEX6zxSFOQHFeKb7sppz6icj/4kkEbL35mRUiBWLJ9c=;
        b=jBdvX76ao+b4iyeO6az8Glu2yz/e+zo2e7a6fHhzSRJDnWQOZJudbgD1fgiKygJCrK
         zVq2n6LvWbWbh+tCpuSCW2NyZD76T20bkIKmfiDqcZn320bRH3DJEybokaRJon1/dSv7
         Dx04YTzzeCZEB5QAHKbaPtC608Q6zxfxn+ZXkETOF7d3fXKz4A7NaoW5JM6k7SeCeI6U
         8pB5Z/NKddTD/EVZ8Y7gQRCqq8zWxxCLHzN9oHfpMSUmuuvuj9SSaQrBByyj/9ku79ou
         fts8UclkCFbXu2TrqA+5pdpcuX7eNPa8IjvGAVHgmwnB9kL5Vdl2T6ZZqHJ4+Qm0gjoH
         VKfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5327q3LPpkqChCWyUe+tLSxe+asKUxjwrQyAxZ8rW1wko29tbLPF
	DbVByzkFyH6BnYv9PoOsIPg=
X-Google-Smtp-Source: ABdhPJzCvgNYLh9AIDcSn0BaiK2ebaYE7xWHTDkNilVjnOgVOBR7P8X/1RI0Oxx/G+9tMbFTb+wtYA==
X-Received: by 2002:a63:4702:: with SMTP id u2mr235750pga.111.1602793284331;
        Thu, 15 Oct 2020 13:21:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:fc20:: with SMTP id j32ls93349pgi.11.gmail; Thu, 15 Oct
 2020 13:21:23 -0700 (PDT)
X-Received: by 2002:a65:468b:: with SMTP id h11mr266762pgr.46.1602793283787;
        Thu, 15 Oct 2020 13:21:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602793283; cv=none;
        d=google.com; s=arc-20160816;
        b=H6j8bU0ipwoKy6vYJiDy9OogTb31Vw2GrIAObZo9tg0BDxtwbpMVBtOtFnjF6us+te
         FyBkw/UgfYRSSDnMYL9wgjb8zTTSY9wzC7XG+bjgrVGHNGF0MaPv2HW+RVHuPEzqJOXD
         y4O9uHHS2omUaOQwm8aF6ECg3NGiIts43KuIuUMTtK8rIVMROjsBSiKNV37LxD89af9L
         a7dShvD2BbZlbCt11EZ0hTP4QhTQv6CC4vEPdvFytD2fS7kdRFxkkfsMAyf1XvOCdNxI
         Sbat/SgGAzU5y3vau5zd1xwavsg2zCiaQo98KlrCO7zuLBZCqs8PJFMu+iIlS6BKQkOD
         rkrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=6+B/6ay2ch76RIsi3EuxlkRuzl1yzj4zjFnypZlgFG8=;
        b=MZG2AY68qUSrVDr0uWnmwW4OnJWGIgbIBrRG38xunlYoLKqZ0dwPPK+u1egLkfBHdb
         MJS7ZE5BNFQiDdS1XyoP0L+7Yqpg4Zv9QLQZwzH0jBiFQcohioOXWAoVUlsHsasItz8S
         BtDjwFG9TG4TPYKCm3ywlrvQAKmzCmkJbjs8QfRb6G+lm6H+JiDTXgH690eT7eHYeFeH
         D+0XtAVdN+8ZlCZHK0ZqIw5PZoKkfDvuxnjCcBI5IpeMYFWxpiGu9LOvdYlcCcSsAiyy
         8Ed/wbujT0pEIdYpzRup+yfPb1b9AfW3f72EzRgu5gogYZwi514x4wCywotUi/APX1T3
         DCUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0043.hostedemail.com. [216.40.44.43])
        by gmr-mx.google.com with ESMTPS id u192si7046pfc.6.2020.10.15.13.21.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 13:21:23 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.43;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 81CA8837F27B;
	Thu, 15 Oct 2020 20:21:22 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:421:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1537:1561:1593:1594:1711:1714:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3622:3866:3867:3872:3873:4321:5007:10004:10400:10848:11232:11658:11914:12114:12296:12297:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21611:21627:21660:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: neck74_591437f27217
X-Filterd-Recvd-Size: 1497
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA;
	Thu, 15 Oct 2020 20:21:21 +0000 (UTC)
Message-ID: <9dd3b8b35a5d03475d9d4f68b54a6265b4c24da8.camel@perches.com>
Subject: Re: WARNING in __rate_control_send_low
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Eric Biggers
	 <ebiggers@kernel.org>
Cc: Dmitry Vyukov <dvyukov@google.com>, Nathan Chancellor
	 <natechancellor@gmail.com>, syzkaller <syzkaller@googlegroups.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Date: Thu, 15 Oct 2020 13:21:19 -0700
In-Reply-To: <CAKwvOdm7=WJHaz+Kq9rxsTZ_AJKAMaYQ65KYOpGWQHu7gXHUiQ@mail.gmail.com>
References: <00000000000064f6cd05b1a04a2c@google.com>
	 <CAKwvOd=4h5-YFWvUATRx=++oGJ9jfBP+n6B=4iuW_nWU5XfJjg@mail.gmail.com>
	 <CACT4Y+Zv5nM4V0jPr+MXwDCcrq8ZZjKFfpHBJBGOekYVOrtOeQ@mail.gmail.com>
	 <20201015175819.GB3336735@gmail.com>
	 <CAKwvOdm7=WJHaz+Kq9rxsTZ_AJKAMaYQ65KYOpGWQHu7gXHUiQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.43 is neither permitted nor denied by best guess
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

On Thu, 2020-10-15 at 11:02 -0700, Nick Desaulniers wrote:
> Joe, would it be possible to distinguish between get_maintainer.pl
> matching this on a patch file vs. -f <input>.c?

Lots of things are possible.  I think it unreasonable though
so if you want it, it's up to you to implement...

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/9dd3b8b35a5d03475d9d4f68b54a6265b4c24da8.camel%40perches.com.
