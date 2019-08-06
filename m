Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQUCVDVAKGQEZSX7IIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 02C0D83D62
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Aug 2019 00:37:56 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id j4sf50877105otc.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 06 Aug 2019 15:37:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565131075; cv=pass;
        d=google.com; s=arc-20160816;
        b=gV5qCJgRaU7AwHHcUwC/QcUEKGAvnh7izGZapHfDMAY1oilFHyMUg0OEEQaS/OAXT0
         B+F7okZWz1S/jLRLEd67rfubcxUHWnOV2H5DMIBdVmFyLaakKJRB/yi7ZF+iUOHj6WQr
         osmNO07Tw3KDsqd1td1verYDqm6Fwi4KIbr8HbWFeZBM496kAkuHYuYKbjaQjHd+nR1M
         j0rl9jSTTXAHmhOMrqJX13hDacIFmHk1Meks7Gfp4nbEeUNbjJW7Q3IdGMLsTJgFNASu
         Dz6Z1RCBNW9JCGGJAlzJKc+vyL8a4x34FlHotXx8r6flEKdFj+N0jUbwblLtaP942ND3
         ETeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=PEpxsb3WPBDD7rp6XM8uBU76N7/ZipXrN1kOov6HNkU=;
        b=YrpKXMUMzcVsVZMos7wTOWlRx2HEc0Xdw6VT0mUuqkYi4hTGOnQ1TAiJ/Tz4Tt2NBT
         ovW1MnPMrtg5hF/eMEYsH+snYlJU5zJalPw0AxY75a/pbXPoYBDyxolHfDh8ov2pVFhZ
         WXxPU/rhVig8pNGsbZCykQThmZ/SJ1eomEiQY4NbCNPmNYOoIjx/23KKLOy7DKREGeR9
         O3xDvyek53U1ViVp03UyM1fVMbxSk+VkhhIiVUoh5AkpcdxpwtIVI0UyZ1yoi9ql76BO
         IoyxVoTkGmWVorG57COCY7NyKgxN/xiY/Is/kYthvMypP/o3+N+NmT0urc4lwGAWNwZx
         jj3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nUtwo04z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEpxsb3WPBDD7rp6XM8uBU76N7/ZipXrN1kOov6HNkU=;
        b=KFZqbwCgf4TEzrITiOPdNphoEs/9Yf6m38Exd1007b1sGBF8hQHjIQ/i5VvtyWmbfI
         WXr9vBx2HBUs256ZRM5WAYyewIeLaTIs0G9IyOxCto0T6zy81bVV8E8CmLtFyFEBzh93
         AVXZJeoSLx+NMLCcSK/3p5KB/fluLPzxYK5/MrA7AYKj0J/UKRvNC7eBgPHBtTZOqc7C
         +9wIdz7To92k803ahOf1xKbdeWTNtHbIRIjqqnhulZ1yHCoIj849iADmXkhITnHw9W2x
         AATAcSmzCIKR8Ky8wREdbrGuiobSMSsraIhFl5S1aBtlJxYiE4FrKItkvtoeLrHE7wo0
         3cHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PEpxsb3WPBDD7rp6XM8uBU76N7/ZipXrN1kOov6HNkU=;
        b=T60d5L7e+n4G4D7fcq3Z+hbKajCYoRYfaC8pgE/A/oUndEb5mlKYGpzcoG7U9w/cMo
         osXibmYbTweO4OahVJg+PxZq+3DdoMlSatg3p3Vw9/LYEGJD6X8P6sWUzFe+8phciXCU
         3W7X/qZDk9KByI+JJbhrMkRFq7ER2RkyCrfBcgMQm7ySAYfiBQ3ENeREGtSPbEfpcg+x
         p5dooqWjydGyY2/dXfpK9ysje/tX+skYBJqtH4vOkPLPWLsFz5+xb7lKWOlqDe5psv7C
         0Hqor6lg3PuYlZ96AFF4xJNKiy83QkJfIpJfH5DJlpZSJkPuALEqFe+W8o8Bt7hZ4Le2
         zUnQ==
X-Gm-Message-State: APjAAAU1WO6F2PuVk6PABzAh3RhfOuCz49wq71B5SqInDrzgyRF8hj3l
	tjqfSpYsx3okwyccQKNW4As=
X-Google-Smtp-Source: APXvYqytUsyVTsMCP79GchFMnVJyn1HvmC1OBe+ulq+Www2L6ykExhhWn62cgBMKKplccqnTV2gUHg==
X-Received: by 2002:aca:f513:: with SMTP id t19mr3438733oih.76.1565131074951;
        Tue, 06 Aug 2019 15:37:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3db7:: with SMTP id l52ls1423588otc.15.gmail; Tue, 06
 Aug 2019 15:37:54 -0700 (PDT)
X-Received: by 2002:a9d:744f:: with SMTP id p15mr5542754otk.287.1565131074544;
        Tue, 06 Aug 2019 15:37:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565131074; cv=none;
        d=google.com; s=arc-20160816;
        b=uCI/HknN7IKTLgVJ4Say45EaVUt8IAgLiLIoDgtXDruACyJuROpXERf67MRq/q+l2R
         2Lp5ldV8NSy8XBVnojXVY6Gsf5P2tYP1yKX8RtCrBXDLc+yTTa+SIZ63Ldbe4Iqb+k6G
         S9yHJ7fdsatRBI8XzWqwDpyhZUmh+TIgym/UpOvvPkymKMU5piabCh5GTN27tfHisVxx
         JC9rrBz7gVgvHKCeBP7w+kUPQYFY9bxx5EZlanX5YD9prQv8KJJrc9hyhw9ju6nuHvQ8
         O0XVRQer5V7iBsKZhLgiLcTKkBv6ypGmBkMh/I/8hsVI5ylYYA1THIibLtp8ANtVrddR
         143A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=LEBBY/3cfwZghFgvlOug6xWmEiQbNBJw16Nwo29xdMQ=;
        b=xQOVtwj2KCPXIabLCVNgnfwi7S+OpaMY5v8betnI7g23kQfO8MpICEy8ZQZ2O4XUru
         eExxLDjy+xeoErKenfdDdi0TrnXroQHO7VsZLgU907KapuZ86ep4FWvabVr8pegjN9Cl
         xsf0hRvSzk0oLdo7TioSNopBA5mDtrSeXFK3BiBt6Rtr98+7Ke25UgS9ptBCI3BY9ra1
         ep1b31ickWELUucWBt7oblcV1lmS9dgldauWvJgsg+mJzftcriaQe8ogSiUdj+NwTWlC
         9NqA72Kcfwoe4hAWLldA70ZK/TuqMDxr4/HdEp3ALziRNeZgUR3vfLZv37u46qFlArX1
         mbRQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nUtwo04z;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id d123si3399480oig.5.2019.08.06.15.37.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Aug 2019 15:37:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id g2so42291392pfq.0
        for <clang-built-linux@googlegroups.com>; Tue, 06 Aug 2019 15:37:54 -0700 (PDT)
X-Received: by 2002:a17:90a:bf02:: with SMTP id c2mr5430397pjs.73.1565131073425;
 Tue, 06 Aug 2019 15:37:53 -0700 (PDT)
MIME-Version: 1.0
References: <20190712001708.170259-1-ndesaulniers@google.com>
 <874l31r88y.fsf@concordia.ellerman.id.au> <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
In-Reply-To: <3a2b6d4f9356d54ab8e83fbf25ba9c5f50181f0d.camel@sipsolutions.net>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 6 Aug 2019 15:37:42 -0700
Message-ID: <CAKwvOdmBeB1BezsGh=cK=U9m8goKzZnngDRzNM7B1voZfh8yWg@mail.gmail.com>
Subject: Re: [PATCH -next] iwlwifi: dbg: work around clang bug by marking
 debug strings static
To: Johannes Berg <johannes@sipsolutions.net>
Cc: Michael Ellerman <mpe@ellerman.id.au>, Kalle Valo <kvalo@codeaurora.org>, 
	Luca Coelho <luciano.coelho@intel.com>, Arnd Bergmann <arnd@arndb.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Emmanuel Grumbach <emmanuel.grumbach@intel.com>, 
	Intel Linux Wireless <linuxwifi@intel.com>, "David S. Miller" <davem@davemloft.net>, 
	Shahar S Matityahu <shahar.s.matityahu@intel.com>, Sara Sharon <sara.sharon@intel.com>, 
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nUtwo04z;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::443
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Aug 1, 2019 at 12:11 AM Johannes Berg <johannes@sipsolutions.net> wrote:
>
>
> > Luca, you said this was already fixed in your internal tree, and the fix
> > would appear soon in next, but I don't see anything in linux-next?
>
> Luca is still on vacation, but I just sent out a version of the patch we
> had applied internally.
>
> Also turns out it wasn't actually _fixed_, just _moved_, so those
> internal patches wouldn't have helped anyway.

Thanks for the report. Do you have a link?
I'll rebase my patch then.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmBeB1BezsGh%3DcK%3DU9m8goKzZnngDRzNM7B1voZfh8yWg%40mail.gmail.com.
