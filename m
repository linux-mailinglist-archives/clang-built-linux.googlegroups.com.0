Return-Path: <clang-built-linux+bncBDY3NC743AGBBJGS6KEAMGQEPJWO2XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 594BB3EFCC6
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 08:31:01 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 184-20020a6303c10000b029023d089ffadfsf840137pgd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:31:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629268260; cv=pass;
        d=google.com; s=arc-20160816;
        b=kTYPsGJjblN5P6rZrqDWnty44UFOk37sFrbtQdZ5hwLUxFixfZqriDu+4bqHAjb13i
         JRvleFruIb0+ULn24WC0NtwrpaEbnIoOIAko3obZN6hj2jtpb8bex/tIPao9/TzYA03/
         fb0r0ECXMY3xBDoZGm9ae+bkiXk+1wrhLfq8h8pa5Z2coJtnneHbgpgUnaXWt4K5QG4W
         idcsC4GVmaoC5gEYpk8hHoqc+EP4W2K7wNpx7Hhc1i8gRlopbaHBIilHdMNze4Emna4J
         QJzhd4EQp7AeCVJ4lWDAGzlS5YGZkLz7cRq8YsXoHL3UIpov2lIQYYZKz3se3FPNlQNg
         4J8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=+8+URDoLbpCMoS/vuhzvBYy6+E4VHFt4LbDSKyHLQzM=;
        b=ze2vYeOqNzxgolmuke/zRVv9VbThrqFicJ9aO7WFELNVB/cCcBx/OAPdbT5Pi2JXyL
         zqT2cFkd+3kh15NLJPORAXa2IKsLrr75EpeMP+jnxK+j55iNz7JVh4gq1uY+0AI5OpDa
         k9+LtmzZz5Epi0MXHkb9w/6WF+dAxQGXOMjH7GdAcrV5T27xzGXavYZou9ZS8lR3Q1Pj
         1k1PAICU+KlSxMJKfjhUAU5/cd2o0fSrn1ALz37Rt6fr7bVhX3gRh2Tw9z2EExaiZtt/
         1G5/FudxXbu5OzEPF0R6KPjwPwvbs/a486+h3bvP71J9v3egtrUwclBCXj9S3dwHGV2h
         /ktw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.91 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+8+URDoLbpCMoS/vuhzvBYy6+E4VHFt4LbDSKyHLQzM=;
        b=rq/mjOuFxm5sLTx2BQmjHYSWROtjpOkmYWvlcf+KsAG6iWpqSAUy6h2mcFIFabiGmJ
         /MqGi2mfbsZDK2nI94hR7MI6b46Qm66SHn1b4sgpMyy58KnLF/xBOPIr2cVhDfIuBTFb
         TNqNa6sEvE/D6lqMxzYLhKrVXzOTm23tG7wcwyUHLP7bPAiLuv10+ou6t9IboCTuAbbr
         3BpggIJ5ZnblrI/v2B8kp5UzcVfxyqYBJ2h9HCu9RsqgBLYP9UzNipV89iguvSxVV2rc
         YjenS5v8lQW+2QRnfxPyROXhvLssIulOQk3z8EnehNvwtlOtHVBcR8/YHDmMiJuMql1U
         KwDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+8+URDoLbpCMoS/vuhzvBYy6+E4VHFt4LbDSKyHLQzM=;
        b=tC31AeoJMcHRGYUmIyGvi9re+GcGu93boycdKhhVFbXIwb0gWjeYP6uVa1gPOaWJVU
         KZ091HWDp1Ek55UchX0PdT0MO8BpIPi9wr9H3+c+uHR7tPFfbYD+LzZioM9Nzf+vgfRH
         ERQ1aLyCIfw2dW8umPsT6TFO7tpW/21wM4f2AD7n1HC+x4WuhCVrDyZBuGNZkeX7ljWa
         F98k1J74EXOUtQewp1XMSKbDrVzc7aA4ALffv/l7rKMD4jyMWNMHfvktCRN5siTqvgpM
         rH+XuTVAQdGdk81xmm2+89tVUOv3Ne72/045wV+gQFWCK61RRXfBTilCZ4mYa+dz+bQf
         UWig==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533zg/9pAT+ccYl+9iz2hnMGWAG814nVLeFZ37WmA8zbqwwD4wcX
	gdBsGIYL6GDsjU4ZpLduH14=
X-Google-Smtp-Source: ABdhPJwsVq2kLsmOfUjc7adaV1w4eFFdXMa+gDs8Q6De5bqLEa7PWKRLiQLBuTgzJtB5xI/U+rHGAQ==
X-Received: by 2002:a63:58d:: with SMTP id 135mr7409844pgf.441.1629268260119;
        Tue, 17 Aug 2021 23:31:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:9c5:: with SMTP id 188ls693109pgj.4.gmail; Tue, 17 Aug
 2021 23:30:59 -0700 (PDT)
X-Received: by 2002:a05:6a00:a0b:b0:3e1:e511:1224 with SMTP id p11-20020a056a000a0b00b003e1e5111224mr7405245pfh.67.1629268259672;
        Tue, 17 Aug 2021 23:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629268259; cv=none;
        d=google.com; s=arc-20160816;
        b=lZtjwknjrZ7nq3fM90WlN/LcPgrOHRT7jMgq62yHK9VrLd8SOhz0k0YKtfZ2wEydxa
         zPTNjal8xOJpnmtRw2nPwQm7GWim0zqJMK9jGc7FkbXcEbS9q1C8jVdT2TcUPAciV2Q4
         YbxZOLJBCbr8sfW36Zm2A27/Esmj4G0D0X2e4nKOq/1nAvfQ4zePBZLhWzUjI6Qdl0O3
         n5ay+UgocgP6DcjhNJ2fLS9ZMUs7NWHSirwveDcsFWrCJxmzjCnHD/34Bks2KY0SdAEy
         U9b0aAX6oCnee4dieV27KPBWkXJuanEM4aeWKl3T9HkWXnR5GgS6efr6X0x8l0adAI1k
         xP/A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=H9oXkb/vA0RrQib8bqyDIXVIFi6zmh6X63DmETPO6ss=;
        b=uA4dAFvTPMNkXpDfL2oTdMusIYzV+mCPsq7DGMjmGgKX407Q7EE3J9ock2ZIS3EQO7
         uVvG96OlcbO9cadj/caDpZ4WPZcc2HRQSz0aixFCobKPHZUoUDEDWfU43PiZpdDzLVpd
         AIA4toQHrq6JkyGqLCMx5+Pcp4+NPBUAPNgApu4bbITbj4dno7bpoFJ5buDT3th9Qrit
         LYYLPf3PT7IZQKItLvSTo8cCQUUxMLH8iSe70AmLCEs+fLK8Up721bZ1z0feX/AUYV8V
         EdotjLuecWxacAuyrSrB57GvcaJu5yrX32A+0D2K0Q/pujuWdxxYlqoq0/bumFRfTx8z
         audg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.91 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0091.hostedemail.com. [216.40.44.91])
        by gmr-mx.google.com with ESMTPS id r9si200622pls.4.2021.08.17.23.30.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 23:30:59 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.91 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.91;
Received: from omf03.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 46E201822186F;
	Wed, 18 Aug 2021 06:30:58 +0000 (UTC)
Received: from [HIDDEN] (Authenticated sender: joe@perches.com) by omf03.hostedemail.com (Postfix) with ESMTPA id D94EF13D97;
	Wed, 18 Aug 2021 06:30:53 +0000 (UTC)
Message-ID: <c408a8ef7173671d6d220c4eaedc8fec8693bef5.camel@perches.com>
Subject: Re: [PATCH 2/5] slab: Add __alloc_size attributes for better bounds
 checking
From: Joe Perches <joe@perches.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Daniel Micay <danielmicay@gmail.com>, 
 Christoph Lameter <cl@linux.com>, Pekka Enberg <penberg@kernel.org>, David
 Rientjes <rientjes@google.com>, Joonsoo Kim <iamjoonsoo.kim@lge.com>,
 Andrew Morton <akpm@linux-foundation.org>, Vlastimil Babka
 <vbabka@suse.cz>,  linux-mm@kvack.org, Miguel Ojeda <ojeda@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers
 <ndesaulniers@google.com>, Dennis Zhou <dennis@kernel.org>, Tejun Heo
 <tj@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, Michal Marek
 <michal.lkml@markovi.net>,  clang-built-linux@googlegroups.com,
 linux-kbuild@vger.kernel.org,  linux-hardening@vger.kernel.org
Date: Tue, 17 Aug 2021 23:30:52 -0700
In-Reply-To: <202108172312.7032A3E@keescook>
References: <20210818050841.2226600-1-keescook@chromium.org>
	 <20210818050841.2226600-3-keescook@chromium.org>
	 <f3e56f56c36b32dc76e174886008a2a1ecf3fefa.camel@perches.com>
	 <202108172312.7032A3E@keescook>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.40.0-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Rspamd-Server: rspamout01
X-Rspamd-Queue-Id: D94EF13D97
X-Spam-Status: No, score=0.10
X-Stat-Signature: hjcrhopffer1mfxg8wkoncrukr5czgen
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Session-ID: U2FsdGVkX18CHCANKQ9SjuGNd1lv9bArDZG2IJwopqI=
X-HE-Tag: 1629268253-493183
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.91 is neither permitted nor denied by best guess
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

On Tue, 2021-08-17 at 23:16 -0700, Kees Cook wrote:
> On Tue, Aug 17, 2021 at 10:31:32PM -0700, Joe Perches wrote:
> > On Tue, 2021-08-17 at 22:08 -0700, Kees Cook wrote:
> > > As already done in GrapheneOS, add the __alloc_size attribute for
> > > regular kmalloc interfaces, to provide additional hinting for better
> > > bounds checking, assisting CONFIG_FORTIFY_SOURCE and other compiler
> > > optimizations.
[]
> > Lastly __alloc_size should probably be added to checkpatch
>=20
> Oh, yes! Thanks for the reminder.
>=20
> > Maybe:
> > ---
> > =C2=A0scripts/checkpatch.pl | 3 ++-
> > =C2=A01 file changed, 2 insertions(+), 1 deletion(-)
> >=20
> > diff --git a/scripts/checkpatch.pl b/scripts/checkpatch.pl
> > index 161ce7fe5d1e5..1a166b5cf3447 100755
> > --- a/scripts/checkpatch.pl
> > +++ b/scripts/checkpatch.pl
> > @@ -489,7 +489,8 @@ our $Attribute	=3D qr{
> > =C2=A0			____cacheline_aligned|
> > =C2=A0			____cacheline_aligned_in_smp|
> > =C2=A0			____cacheline_internodealigned_in_smp|
> > -			__weak
> > +			__weak|
> > +			__alloc_size\s*\(\s*\d+\s*(?:,\s*d+\s*){0,5}\)
>=20
> Why the "{0,5}" bit here? I was expecting just "?". (i.e. it can have
> either 1 or 2 arguments.)

You are right.  I misread the doc.  I also missed a \ before the last d.

So that last added line should maybe be: (totally untested btw)

+			__alloc_size\s*\(\s*\d+\s*(?:,\s*\d+\s*)?\)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c408a8ef7173671d6d220c4eaedc8fec8693bef5.camel%40perches.=
com.
