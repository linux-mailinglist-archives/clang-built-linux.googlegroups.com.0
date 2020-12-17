Return-Path: <clang-built-linux+bncBCDY5PXS7MKRBCP35T7AKGQEXJPGWXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id B65B42DD02F
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 12:14:18 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id l8sf3688424pjf.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Dec 2020 03:14:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608203657; cv=pass;
        d=google.com; s=arc-20160816;
        b=rnYALAZYzonMuhqIOV/6hAJ5pCqzpoWdVtm6pIqE8bpXrmtrDtdVk54kV6Xdg+UvlG
         +em8Cgj3HEULcTwk7wMQzF9yVBW8MiWh3J8lsuDP54vBSncrJD8hqtRRrEnP2hri2pun
         c1xMIhvIbhomFNbhjsd/PN8nPvcYfuxv0kZt99EJ52QCuQagbYY5TXyt2nhpDA3GWVih
         wgnYf4ExA7VlqR7kG5z8edC3OG+vdFr6o0mPqu5tlJ7mDEQZBlQLcfR6aYOf6VA3lItk
         iEyPCEZfjng4H4Yk3YyNHAAh/8wZMP4Xe7at7fCQS5VLx2LgdcuAGnPawRPhn/i08w33
         Swkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature;
        bh=pCeQVtphRqkXZhd5WV/Acm8vcEXV/2TTRoty6UYZxC8=;
        b=Vn14q/gLV8S7KWrC0GqYeGkuE+mCp2auU8S8/wHmGBjXpuiEN/JL+GYKIQZZTHLnvh
         4ksWwXO1/KjSql1h1rFEs7GQbTP60cIlWfQgxmlbwKN7LHhfpux5FU5/JMno84up1MU/
         S63r9gOx/C0MtneCscq91wqbEM8TPp71g/OcmV95sKFpnuDJ1LIGUJvsFnu2BusVuSZm
         ShcEa7/esUkQ8pP3jd2lYy+UV6Z63G1Pk8Vorof14ehucy0DB1X6ft3Msuhw7Lt6eMXC
         07TcvYeE3tSZSIYpoY3Pt/MX/v/pg94jQZk6OCJNAoTSw8CAIfagGJJbbNYfZy3clAMn
         iT/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philippe.mathieu.daude@gmail.com designates 209.85.210.49 as permitted sender) smtp.mailfrom=philippe.mathieu.daude@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=amsat.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pCeQVtphRqkXZhd5WV/Acm8vcEXV/2TTRoty6UYZxC8=;
        b=TknjoYltmr52yO2sqi8dfgx9k9C9oJCEJ/+O/vJ6SIArBXCzAi6zWSaQK3RRXO0da8
         9yS14HH0/XOGhCOOR3ZrEImBpVa3HItBU+dwCMkPEBj1CDpD5WXucvx2Zui9/dgQ+251
         uys0psAzS6/3EHrbRZTleZNQ1fjLasVAR9goc9wyGLbqqlZb18MjrtUWUmNki5V9qEZ0
         YS3tCRUgYucBvEDLyI4oTmnaKgsDJJg/oWyCdR6pBzPscNcCMLzkHXfgVw7ysSTbYgAQ
         d9T3bprVoAki74vHCYLcZK0NA7H/uFTDeQCxs2A4RF1jG0RhIcgwQTRNta5T5AwROV4d
         lfIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=pCeQVtphRqkXZhd5WV/Acm8vcEXV/2TTRoty6UYZxC8=;
        b=iCLKYTIya564lmNvSePUtRS8pZWJbpfcyTaRM3BuaucyYGSrKLoUU5+gWilwt4e9UF
         b3odLmN04BLrCrfKOfmaP8WPWbZfPInwDpHHPS8G/zUg47W2UHAx5i5a7kpd5htj/dlw
         NaOD7WyCbSNCc3PuXIW66yzxg4/1HJ0qI/mpmI0SHSaLRA8lyIJpLwVvHKeYressh6yZ
         Bunk+O1VkFc8QYVVfZcot1851WwjUFM9bCpOQWOxhJZ2EJN636SixcywjG/uV6aWu7S2
         G3I3kPB7m19Fv5tbQqHrrzEGknF35snGi8g7hIRgPMQ8SDe6g9llb66eNrEIK0LZHzZl
         pY2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/mhcksdpUlfoJwzCCPL4KO0LutpvDl2g9hSmD4J5OIT5Gh3MU
	Qfn8yIKSJ9LVWn2PFZ5k31Y=
X-Google-Smtp-Source: ABdhPJwD5CTJ4dIfRCrOzQbbyDbdm5OqZhtvwNoTbP9uq/jzOxVJs4zkXNX4CsS4+POCa35roHp+UQ==
X-Received: by 2002:a05:6a00:ac5:b029:19d:97c2:d3a7 with SMTP id c5-20020a056a000ac5b029019d97c2d3a7mr29389881pfl.61.1608203657455;
        Thu, 17 Dec 2020 03:14:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:bb95:: with SMTP id v21ls3021963pjr.0.canary-gmail;
 Thu, 17 Dec 2020 03:14:17 -0800 (PST)
X-Received: by 2002:a17:902:ee82:b029:dc:78e:6905 with SMTP id a2-20020a170902ee82b02900dc078e6905mr13806059pld.48.1608203656878;
        Thu, 17 Dec 2020 03:14:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608203656; cv=none;
        d=google.com; s=arc-20160816;
        b=jGVm6jaRgz95Dtmt4xO1T/7XqlHjFTaaK5R93V2suditBTYp7EcJQmP6A0JGmeaouy
         6GIszT58AJNRxO5hU+oKSpGHO4TPYECrvyzfIGFsQMbTc6DtIUneZjPoHpiFaFh2jFdK
         chOIAbl6vsMRht0SgXavZOlmB/EaWkMeytX6I9X3k2LQn6qJU0jXP9tXYwCoHwwP3Kjm
         U8P9qzWrmADzngVQDgyy7JXyhIs8GsvR3IiMCoOZ9dJRYcpcKKDgRmZ/yralH/ZmWIAF
         b09q+3v1KcYeg+qtUESBOjH6ttOtdGmyP/X/Nmujp3K0moPPmQFSIogok/fWQWJg488q
         tRmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version;
        bh=KJvh92esfWyHpcdkLeM+bdzabnEWcD1A6t+as3ieGWU=;
        b=0VLfFgIk/Fu6bEj/wZhyr1/NvvF+Yn5EvoaL5c11VigjsiVE5DwhRGlNnsNPMWRJhY
         0mNABzy9SKYeaQFnL+m+nNJGUNEQcazLz3Rj4E4yP3mGbQyB3UZPNvYGQW2o+SB6OnQJ
         rNG7Fz9zFaS8PN5Pvh818vmuzXHvy6uHdM65T+MKfTM5YnGTPgpm8PCf4ehbPId/Offm
         dJe0Tvr0UY9/H0LB38V+yHittajVnQoURO6FmtKkREDrOLT+HYRCO50LgQd1OjDomQsb
         ACHq6rS64O2Nixv/c8U8KZvi3y06GD+s8jaRB399kyZfkpKF/dtLpyb97sJC0ej3LUSL
         5d5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philippe.mathieu.daude@gmail.com designates 209.85.210.49 as permitted sender) smtp.mailfrom=philippe.mathieu.daude@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=amsat.org
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com. [209.85.210.49])
        by gmr-mx.google.com with ESMTPS id nu3si317255pjb.0.2020.12.17.03.14.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 17 Dec 2020 03:14:16 -0800 (PST)
Received-SPF: pass (google.com: domain of philippe.mathieu.daude@gmail.com designates 209.85.210.49 as permitted sender) client-ip=209.85.210.49;
Received: by mail-ot1-f49.google.com with SMTP id 11so26860821oty.9
        for <clang-built-linux@googlegroups.com>; Thu, 17 Dec 2020 03:14:16 -0800 (PST)
X-Received: by 2002:a9d:63cd:: with SMTP id e13mr29394063otl.37.1608203656271;
 Thu, 17 Dec 2020 03:14:16 -0800 (PST)
MIME-Version: 1.0
References: <20201216233956.280068-1-paul@crapouillou.net>
In-Reply-To: <20201216233956.280068-1-paul@crapouillou.net>
From: =?UTF-8?Q?Philippe_Mathieu=2DDaud=C3=A9?= <f4bug@amsat.org>
Date: Thu, 17 Dec 2020 12:14:04 +0100
Message-ID: <CAAdtpL7kP_+VWJHNhiqybh9PbnLbbgiT-d29sj7arSk8Ckpwvg@mail.gmail.com>
Subject: Re: [PATCH] MIPS: boot: Fix unaligned access with CONFIG_MIPS_RAW_APPENDED_DTB
To: Paul Cercueil <paul@crapouillou.net>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, od@zcrc.me, 
	"open list:BROADCOM NVRAM DRIVER" <linux-mips@vger.kernel.org>, open list <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com, stable@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: philippe.mathieu.daude@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philippe.mathieu.daude@gmail.com designates
 209.85.210.49 as permitted sender) smtp.mailfrom=philippe.mathieu.daude@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=amsat.org
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

On Thu, Dec 17, 2020 at 12:41 AM Paul Cercueil <paul@crapouillou.net> wrote=
:
>
> The compressed payload is not necesarily 4-byte aligned, at least when
> compiling with Clang. In that case, the 4-byte value appended to the
> compressed payload that corresponds to the uncompressed kernel image
> size must be read using get_unaligned_le().
>
> This fixes Clang-built kernels not booting on MIPS (tested on a Ingenic
> JZ4770 board).
>
> Fixes: b8f54f2cde78 ("MIPS: ZBOOT: copy appended dtb to the end of the ke=
rnel")
> Cc: <stable@vger.kernel.org> # v4.7
> Signed-off-by: Paul Cercueil <paul@crapouillou.net>
> ---
>  arch/mips/boot/compressed/decompress.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Reviewed-by: Philippe Mathieu-Daud=C3=A9 <f4bug@amsat.org>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAAdtpL7kP_%2BVWJHNhiqybh9PbnLbbgiT-d29sj7arSk8Ckpwvg%40m=
ail.gmail.com.
