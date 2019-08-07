Return-Path: <clang-built-linux+bncBCZOPTGF6YHRBA44VTVAKGQEF3ODHZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8048524C
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 19:44:35 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id o13sf56606746edt.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 10:44:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565199875; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z6IhbtKPs7DdsqWbdO+sm+dKtfYRYUJCdQvKUiwpitP6DeVrHgIJ0M7u6voHltTAhe
         sqxn1XKopjViwDYO834ND2GCT3jM5GjAmxYqG4OGa9PWHe+4vlVWv+c2fu7qWz/e4Syn
         DvbKzMLE/W2yGj+iXaPpnUWG5Uiia1jZJDGRohFw8EQTjgsIufueLPAdasOocfIq70fW
         qKw+hQzYrL/C17jbB5dN25kHXOzyfyWuvUKBQSntiLSqvLZnRZgUGEIVqOYFo9tgSOWf
         3iMp2xscnJ7lCP0NjSZIv92d8MWHiJHoGbNtEu9AYYDwd4A4R7qETJxt30jX2ETFsYH7
         alsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=OD3mw1DjOIuD67shhLLAqlIn5zQgEROhfYw4Xtyz8/E=;
        b=NwlKXhU/S6Ic2MbMrtyRSenkRYUV7NCwhJnZLioRoP0ZNtrzy8eiHB/DpH9Es4OW9N
         Ns/q0U7e4JaB1JejmN8jltC1uGqkkE2mDl09AP7fBG6FXmB2Eemzu8aF2FWS8julpH06
         nj5LqPtbImuWJy/x7EhQK4cN8xs91mlBOR3DHxBuWUbDJ69iLoHYor+rijQdMOG2+f+G
         9vjw7Fo0zcWFNor2/pxQJdBFyjL63lpU9h4nW+5cthtfX7+Ic3nnjFShKX9wTK7mElEx
         QuB3o5ofCmE2+ktexj7jg1Ua/t8l0AwH9xx1joOCdOENGcZpGvp1S1PGNeFXsUHqjtzt
         yvVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OD3mw1DjOIuD67shhLLAqlIn5zQgEROhfYw4Xtyz8/E=;
        b=TbBbMWCtYJH0XlqwXAgz9sy0d/XVg3QHRnj5Y7MRvcDXvoU6vRkYkF0aUlZfIJtmR4
         UO9R/mYkmaoI/UeoeWlByKc8NUOAuFWyrv8uZvqaUrIGEXlWnO2D/kzG1KFEn8+qgslM
         NMRLN9G2f/vawmA1zzNNYCP1XV/XkILlDstVvFXwhFwphR8SRXiR8zhMUi8LUoYNP7N3
         oSdk7ek6j5Zekk+O80shcih/XOs9aty2yl8m6baO6tgeY8HoIjXHqY1Oop+iao2JPsrV
         /58N4zU1kOZS3xGjuQqWhuhcsyi+KCQFb8kk5JV9zfQctLxFFzT+3dRyWEb5hAUqV2n6
         +SGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OD3mw1DjOIuD67shhLLAqlIn5zQgEROhfYw4Xtyz8/E=;
        b=F5wsZNI6iv4npZ975f6RUmc/IV9jA10svRZux9G4fL3Fbo+ZWbAv4RA7HFOOu1Au9C
         FqP1zZkOBPitGAOlkaAcDgOlb6xy/eSNnYtbgAi8KVfeSq+ApFQaFhIcNy2Ot4o6SYIl
         1K9QGLFlMCfr4QikQ7WcxEHs6ddP+jwUJd9r9+lQoqEMhcoJmOVHilkVfaSyq78VRlFw
         7xazmaQ3E09jduBSgPyI3aSI2b8uvp+n6Trp9FFp+Y1/PN9Zkr2vR/VurRLLNJugqb6H
         PPrOE8thaHtk+CPBxyAbKuwdJrJCLcG7LKghbYGCEeQUTKm9QSvJwUy6I9EKEt99DgPH
         j0gg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUgx4FafPleeIMYCLyjAuX+lEiqdNAY6VuKHF2cmBpJi5nRRT4k
	wgkgGOU+4C+FZPOw0XfHxAQ=
X-Google-Smtp-Source: APXvYqy261So9sjo15uYKJHiqZcNf5WCLBsbXW9PKdcXIMsRzprFTciuf9HjtnySGob/7Z+0v/6tPw==
X-Received: by 2002:a05:6402:28e:: with SMTP id l14mr10982085edv.11.1565199875752;
        Wed, 07 Aug 2019 10:44:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:94ce:: with SMTP id t14ls25010052eda.7.gmail; Wed, 07
 Aug 2019 10:44:35 -0700 (PDT)
X-Received: by 2002:a50:fd0c:: with SMTP id i12mr11641823eds.55.1565199875299;
        Wed, 07 Aug 2019 10:44:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565199875; cv=none;
        d=google.com; s=arc-20160816;
        b=nPnVLrxx6F1nPqgFHs4Rz7TkydEXBNuaFBvJMSaw+gv/er7lBS8l0uJ+av4EJlu0x6
         IDkj6Oljbb7LgcXfK30gpsPKouei0KN0KI141Ac9ULRPf16PTmrBvjIEoBWx15yFoa0s
         X5NZLLozesdn1mPrMTU+T2WdGno9h/u3nxgLoaJDS5iN0n6BlNc1+ruDcH4U0EbF0jau
         zbhCsZqMuDIrx8uiPOSHXClSdwreN87mK8X1QZdn40UKMDbPafKej+bd2lM1p5mFM+/R
         QZS75stcv+v2QHhSObvmRg/pBpfA0Q+cKbUIN3G5Csl4k4aeL53i3tniM+vb4oPwrQhe
         qrcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=mICB4rTy+drQ0SLFyw4GzZUpQ9HpwKQXi12Hx15Ev+A=;
        b=Ie2+wyenZDt8/N8IX28KlVl8MWHzZ/HcT3AXu91+BLgeRL+9lBpfUuC2wA/Rob5NMm
         IlHJrkTy6b9oMdqPPBXDzGGHN+CmRGYVMjAtEb3T5s+5/OplJcqOILZQuq+zMaumMFKu
         lGtX0pPnhPbVCwyrXaYM3ni9p8tAGh1+1DaGkKP0RltE3cRe2tLJljgSIkT/jf4Kqt+G
         R7fPB09967tHgE5RClC4Wj/bUpVnxJROIJjTbdN1ApB656BC9HTofI2TO0B38JSQ7gcA
         aR25RzbvPjdJB2+Btm+m5CEWF3X2l/qMpIn/u4K8pOq11dsm+8nseI3RFYoygesq+nJN
         j6Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id w19si1138428ejb.1.2019.08.07.10.44.35
        for <clang-built-linux@googlegroups.com>;
        Wed, 07 Aug 2019 10:44:35 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of robin.murphy@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9DF6D28;
	Wed,  7 Aug 2019 10:44:34 -0700 (PDT)
Received: from [10.1.197.57] (e110467-lin.cambridge.arm.com [10.1.197.57])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A354C3F575;
	Wed,  7 Aug 2019 10:44:33 -0700 (PDT)
Subject: Re: next/master build: 230 builds: 12 failed, 218 passed, 15 errors,
 1179 warnings (next-20190807)
To: Nick Desaulniers <ndesaulniers@google.com>,
 "kernelci.org bot" <bot@kernelci.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 naresh.kamboju@linaro.org, zhengyang@rock-chips.com, kishon@ti.com,
 heiko@sntech.de
References: <5d4ab6db.1c69fb81.8f6ca.5b76@mx.google.com>
 <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
From: Robin Murphy <robin.murphy@arm.com>
Message-ID: <980901b6-eb87-2b4f-01fc-bd41c9258203@arm.com>
Date: Wed, 7 Aug 2019 18:44:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmZ40g0p9B5GF63q9p_fO-LQoSXaYuu9SS+rfNbjE29TA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: robin.murphy@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of robin.murphy@arm.com designates
 217.140.110.172 as permitted sender) smtp.mailfrom=robin.murphy@arm.com
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

On 07/08/2019 18:35, Nick Desaulniers wrote:
> On Wed, Aug 7, 2019 at 4:32 AM kernelci.org bot <bot@kernelci.org> wrote:
>> ------------------------------------------------------------------------=
--------
>> allmodconfig (arm64, clang-8) =E2=80=94 FAIL, 1 error, 34 warnings, 0 se=
ction mismatches
>>
>> Errors:
>>      drivers/phy/rockchip/phy-rockchip-inno-hdmi.c:1046:26: error: anony=
mous bit-field has negative width (-1)
>=20
> This looks new, and only an error w/ Clang builds.
>=20
> Looks like it's been reported:
> https://lkml.org/lkml/2019/8/7/320

...and apparently is sufficiently well-disguised to have escaped the=20
general cleanup of the underlying bug:=20
https://lore.kernel.org/lkml/cover.1562734889.git.joe@perches.com/

I guess this is d72f2a993607 ("linux/bits.h: add compile time sanity=20
check of GENMASK inputs") doing its job :)

Robin.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/980901b6-eb87-2b4f-01fc-bd41c9258203%40arm.com.
