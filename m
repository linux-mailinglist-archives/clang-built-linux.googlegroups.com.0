Return-Path: <clang-built-linux+bncBDV2D5O34IDRBUNEZ73QKGQEXSIG7QA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 015E9207F43
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 00:23:14 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id c26sf2638320qtq.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 15:23:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593037393; cv=pass;
        d=google.com; s=arc-20160816;
        b=oawkcj4DUnir8T4JPL1NFJUTHI+siHuDuYxmUPt6AouUV5y3CSnME2UMRKY1uA8C9E
         IOfmxphN9iqxC1VWgAIF7pUAo5nW+wagsz+30bhcQTlcHUWvr5uSE9a6DjLvxIfiL3M2
         0In1+SWqdBFr+Bt40qoKCeI+lclzXH5Dgm5sm7fCLGAngWsun2e9pUKvlydGOPmCyJYn
         crmVM2vOsP+QhZ8ni4bWYt43yikzDCMnV67F3lSNtdwSOLiLK4PKSZVFFhseL/kxXWly
         K9qC7G59mE0Agc9gltdyQUJHEWXXteKyCxeqw8bp/RVANDMWgBq+1Tnm+B4VcKW/HgRi
         bbwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=2BccUVvka8SzDl1YnUbrIh6wi0e/AGFpKIPUhkFmQVA=;
        b=G0/EX4yelhDs0cBJO2WPTFCVIVicAOaODea+nEFKyuiPijZmOTU+0C+llvj/mGSKbQ
         F4DKH6xXHZGJRNMPWbLnblDLgblzypCJlbBHmBRJQNBgj8ssFnUDsab4zVMZdoZ6C2Cx
         5qP/1z+m0ikSPoWKATzx9giWm+441sK7NKsw//Xqo7IdFQBGJRNcZ5q+W9Y5qgG3x83z
         2JWMvNtSddHc+bxN9rvXZ3KZfAsLqBNgOoS7eewNKwOjLJL+E0ZGLDf8PRckSZhWqUm1
         6wyDubodeL6V4/kFcclfcad1MPcXZCe9fhGWAxQU/Cmyst1GpFEPQU6/UzoVe6HuLEg3
         j6FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=SmbpycCk;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2BccUVvka8SzDl1YnUbrIh6wi0e/AGFpKIPUhkFmQVA=;
        b=Cnw+tKwzzmxIAUEyShTIXdmhWAeBXLwwOwCzs4FydT2iQCEbF+tt9An2Vsqgzs4Tw2
         nzA0nKZ7FfNrIl4amrA9J+oXTg0B/a9Qbd7gPnosoJ1u/upnx7+MRYOZQHhyAwmImrm8
         iWfPVhhNlymAEheBkX+Xsf7R7OKT4fFaQvVQmtnfoAMjkxU/4PnVUEKOOzoG6VuamB2o
         tDiognc/1J3UM6dmz/m1dcOAkSqTHn7y+zaEQy4T115sLcCc9KvoQ/tZYNBpVdHWG2pf
         24MvAOkCG/I1ZUDT0MfxQOSr0rGJ3xqb1Id03HRJkPqbLKH0Qkxayk7a/bBx3ofM3ioX
         a0Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2BccUVvka8SzDl1YnUbrIh6wi0e/AGFpKIPUhkFmQVA=;
        b=Qbkg5M9UdbsOpunYlIcL9DmCMpEKGNFUfSun4ax2ZIZaY0g9Xjd4mVt64Cha14blgr
         xNUkezJlryL9L2KUeWDOPs1g2At1lGJTxevWM5SDay5A67TAFzSL3tNGi9jCTQsuudNC
         AYIqOT/lUcDzqjQLTOfkkq7+End0jHPJkfw/gOo/8vC4Bkfmwah52mTTuzJb2Rs8vfxF
         PfbKQ/Z+flu8hV7zIrDh7QPzQzdZIkUo/tty2qC1Qv+ld4mYtWefB3JKuHIKUYZhLKzo
         LHkMpjXNRLJBNAUqAULn4+xkoYFnePp7hgKprk243QTESmDeSUJe6ACRHtYsBqmWUVGu
         8Ifg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532NHa3tdqKDM43eIma+GgA1azYgfdOTp0WLHYih80qSEPk3Qn7g
	M52Ot6d1mOJEg7pmnstwhCM=
X-Google-Smtp-Source: ABdhPJy3cg7CqynDUpRbmnjSrijy0LC4yTZp6jfF/PVhRhkoUDV/o2g9ZsyidX5CP3JMcuvd9XwTEg==
X-Received: by 2002:a0c:8e04:: with SMTP id v4mr33669649qvb.213.1593037393821;
        Wed, 24 Jun 2020 15:23:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:52e6:: with SMTP id p6ls626160qvu.0.gmail; Wed, 24 Jun
 2020 15:23:13 -0700 (PDT)
X-Received: by 2002:ad4:42a6:: with SMTP id e6mr32645661qvr.170.1593037393509;
        Wed, 24 Jun 2020 15:23:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593037393; cv=none;
        d=google.com; s=arc-20160816;
        b=qW9dUGdNgmFIvP9A8KANhFOe23+eAuggZjKUCTfz1+o8ox87lAeP+ABzAfyunDmOrw
         meAf0OHc4+hHXP35pmTACMUduZfOgs0VC1qeJi3ERLq73+kuBt4GV88QjAq6/lotfdHW
         w9Z+aSF/1hUSosHsTkq3uNV6JkK+nrZkkZ19xoQ9Hh1tOjlCbWzdvfoFAuT3M5+x0g/K
         b4zYidIbN2nZhAhrpVATVcafINzoBdSPDku6sJBRT5+VCZmfKjtunM6ygfiYx002UJfl
         HBARn7aUWKCWUYhNQ8zWruwxPwarXuzOKqfukH8puebwUDiGcxnta6Hi+ZWidBhFimVd
         UCnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=0QjoqLqKAZr6XB6d4MfzcnDTgWBH4dkTiI3A6LpLzo8=;
        b=EDhgorLp9dZ3rEYbmE7O51pF3jhEXnKN9UgwOavk2ArG7cpiCcRpNTwCMZai9cns9Y
         WqOVXa+ryLkKBxa4Ga1/VXRTO3KeK77ip/uoaJlZpuNk7xq6z7a492UI/23wzdJY5d+1
         cZdFTkX/o9ymL9aWyWp9uZtZuDmfbQS2r6EJKdcJaE/gbJ03MOFRVY/devgpi5+cq8iW
         LVV12bzD96+lxb5EJxWO2UTTebLGVaPOjn8z9ieeHTxM37IDl6bI0I6AcIljnXYikTWM
         LKkqH1eIx0sVT2xmqmqppmmOF0NHWn+R2wO+L6wpJENr15ZSASZKRUqxuAnWepHw+rCu
         E0ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=SmbpycCk;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id y21si1596973qka.2.2020.06.24.15.23.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 15:23:13 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joDnS-000781-Kt; Wed, 24 Jun 2020 22:23:11 +0000
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
To: Richard Weinberger <richard.weinberger@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 clang-built-linux@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
 <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
 <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
 <202006241335.2C0FB5DF90@keescook>
 <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
 <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com>
From: Randy Dunlap <rdunlap@infradead.org>
Message-ID: <10f7c20a-0a32-f5cf-7fdf-761db22afcd9@infradead.org>
Date: Wed, 24 Jun 2020 15:23:05 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=SmbpycCk;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 6/24/20 3:01 PM, Richard Weinberger wrote:
> On Wed, Jun 24, 2020 at 11:29 PM Randy Dunlap <rdunlap@infradead.org> wro=
te:
>>
>> On 6/24/20 1:36 PM, Kees Cook wrote:
>>> On Wed, Jun 24, 2020 at 09:23:25AM +0200, Richard Weinberger wrote:
>>>> ----- Urspr=C3=BCngliche Mail -----
>>>>>>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more?
>>>>>
>>>>>> True that, we can rip the file.
>>>>>
>>>>> Has anyone fixed the uml build errors?
>>>>
>>>> I didn't realize that this is a super urgent issue. ;-)
>>>>
>>>> Kees, if you want you can carry a patch in your series, I'll ack it.
>>>> Otherwise I can also do a patch and bring it via the uml tree upstream
>>>> as soon more fixes queued up.
>>>
>>> I think the lkdtm change will tweak this bug, so I'm happy to carry the
>>> patch (I just haven't had time to create and test one). Is it really
>>> just as simple as removing arch/x86/um/asm/desc.h?
>>>
>>
>> I just tried that and the build is still failing, so No, it's not that s=
imple.
>>
>> But thanks for offering.
>>
>> I'll just ignore the UML build errors for now.
>=20
> This is a allyesconfig?
> I just gave CONFIG_LKDTM=3Dy a try, builds fine here.
>=20

I'm building linux-next and it fails.

> But the desc.h in uml is still in vain and can be deleted AFAICT.


--=20
~Randy

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/10f7c20a-0a32-f5cf-7fdf-761db22afcd9%40infradead.org.
