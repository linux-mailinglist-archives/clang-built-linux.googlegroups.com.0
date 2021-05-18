Return-Path: <clang-built-linux+bncBDWLZXP6ZEPRBNERR2CQMGQEKQO47KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A895387515
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 11:28:21 +0200 (CEST)
Received: by mail-wr1-x437.google.com with SMTP id 1-20020adf93810000b029010fd5ac4ed7sf5305508wrp.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 02:28:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621330100; cv=pass;
        d=google.com; s=arc-20160816;
        b=PwD4phjBtRel2StJBsbeqOr7d/jPYNKdUFT1kv+exJ3XpCwbEu6L/CNs+72odN6Zbh
         EGky5ZY6DXST5j51aYByFt+jijS3P5Jh6jTci12HDrwjCygcZuZPpn7i7ObfNkBBD5Ve
         fgaBq200dKxPYjKse6+0tpWi1BnAS8kUxVAZirnSkf0m6aNyjHZK/cqGuUAc2ig+hdl0
         x24aOV52z6HdhXyQqPmpvh9qkYXqvkEgUCWqsa9Oc1LnV9F0RqUVo4XLWVp1ZMvbHTy2
         jFbHqPrgvmriS037Iv/CgOnHukYHe0vet7CCbpJfmW4BxR+WA5+Hnv0ObqL8r7xmUoVv
         fdJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=Jf8q1xuvh2gaEOqKRMRvHYaReFQffnmW9pxRbTVkfWQ=;
        b=SqgEjpAdgv9/GqiLZHrXElsi70Nf82HmwKvf5RaeaInXzJIttGdmMIEiEhGXII5AfK
         F1CfVuCDorHcsqHWgG4P064lECkwsQZ2ih6HqqDVTHXBQvYgZYqc4SsXgMYGC8sJg9Vo
         mMJEZlZWwu78GwnbAG82Q9EkvDM/Y1YCxjOIwIDNzrHOH+GswI9323R2mkgt+azRmGax
         ug7p+blxmHeQDn8H9nPdLxowjhfaoJQkKW1Y9Tm5AfcPWlcOlZlwGNi6Pel/4nlFfZ4Q
         orF+GH0i+yVHy/q/y+KBwFPgUEonq0rJBxaDrBpPYWGms7NRqMN7P0XL/SIA6a186VAD
         vdbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jf8q1xuvh2gaEOqKRMRvHYaReFQffnmW9pxRbTVkfWQ=;
        b=pV/8HjXFZc0ldC65rfDRq78AlFstFU7gih1+U2O1d168RoDfnEUC5ydSKVptaLF43s
         w0qyHTOe7reMtB6fFZeAZ1hCO/3dEYEVOHWxpfxqFIbatxTH6140RwOs6uKMfzar5ytZ
         lyMPgTTn1a9qbt4NKlvDNqs5rT8Qpx73TJ51VL42YtZVZN1rO38yYY14DnnKYCxK6GkH
         Ps4vnjc2WpQNPh/fiF9A6ZF9skSt8lFnQINnWGyTxsRZ+lh05gr5c3JXIkJRceW0Q7ng
         PuWzWc7YzZWvVqzF/PTepu4J47O89Ix1h8G93nTgq/POpQ74QuSPBrMuEBEGw05DTJWr
         6B0Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jf8q1xuvh2gaEOqKRMRvHYaReFQffnmW9pxRbTVkfWQ=;
        b=MsJHQ9TwZPwNzP0U2zlrxS4AmCC7va6ZXhK/jlzN5jrVvGX8bu56IE0lwVRqpSskfy
         ApxqxK5PKcesFn6tWvT11W/cR4axnmXKzHE+n9xnKQ17eXFd/ytzPXH/E5pujYQ7vwS0
         18+6ucEsaYuoGDJ87b++D3pyfcYzWr9k7PsLV3MVAmtGaLJQKXFhOJSk3Pn1fYtVsRrr
         RObac3jdu1cfbar2WEf+8RBhxjiTXWKmki1kFDKlln4BbKw0aqnqpLq5u781D/wP1koD
         osl8Ez9POdvAkPKNyK/mMHmhmgx1Ldlernygxz3Noweo5WNOcykiRlTqau4ftUKLNsHH
         eVXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5321wgU6kxc+alEy/Db9mGvdqop+QQX45m37jnGSoNJbHUyMGJXF
	jow4QsZYAtazua0zuL+uO1g=
X-Google-Smtp-Source: ABdhPJwt/hPJVhd2RkM/9fezKB7kOmHzI2a6QO1DNPs2+MurOcfQ2Mo1cozx4PbpRsoeezSqXUJ5fA==
X-Received: by 2002:a5d:4528:: with SMTP id j8mr5494097wra.7.1621330100761;
        Tue, 18 May 2021 02:28:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:9b95:: with SMTP id d21ls2743962wrc.0.gmail; Tue, 18 May
 2021 02:28:19 -0700 (PDT)
X-Received: by 2002:a5d:5409:: with SMTP id g9mr5428382wrv.321.1621330099822;
        Tue, 18 May 2021 02:28:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621330099; cv=none;
        d=google.com; s=arc-20160816;
        b=quQv1aEslxPkoqnPcOazhltEbKB+kJiDsu1wN3Bg3iRc+8WwlRAwqrnsRzMlIlPiZp
         mxuZdVAjka1JHzvg1E0WmqtGNsaIU7WzJeOUhyL7A7kaJV+hOwVW45MMbBF7pkYFf1po
         3aEy7KvG9GebtYJw1Ajjfm4fW7QYDzWDr/Kl6d+euM/s60zkiy3NQu3urFpDALsGh3S/
         DUC257ooXUglYEX0kg8EtWy7858mtAqJ3ZOFiUpj2cAhYbNipZ2NMiheI2H90Hg/5N9C
         7zwmcj2KOkmFCdk29DMmN0zKhUAnmDrM5132q31EClWR30byvoaAI/p5UvZqwFLzqSZ6
         FePw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=zi1UQBpG7X4oqnYBof+pizZUyLRcPBxI9N85cyYeY80=;
        b=UtHlLEorDroqaeDNDF5fH4+1TuhFa1pN4DM3kxRXrJdbrJSJp2fUes8REwnCxd7Ckx
         RoEFhZKy9JZsYoruJaYNTsNULRcZupXakl9T0gvhpdu6+/Cvmqqk+BEkrFbTdLnD6hyD
         TAm2K+fBzv70J2z1EBO93rACvYS/TNxcs94cRkQTxsNB21x7TgkWTCg1kRLFmdIcs6Nk
         BFjqNNZVu1R8/oOasUXZ+mqtcTbDao7mPU7AS6l9h44Twh1aF9cDme1J6gunG7p9+M7H
         AQAdmCOqCV4oj1tLyrz8joF0RxVxHaGqbpNXO1Bn2Hk2IKKtRR9A8Y/gwZW4j5IaCIi6
         VpAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=vbabka@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id p65si81326wmp.0.2021.05.18.02.28.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 May 2021 02:28:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id 60CE4AE8D;
	Tue, 18 May 2021 09:28:19 +0000 (UTC)
Subject: Re: [PATCH v3] mm, slub: change run-time assertion in kmalloc_index()
 to compile-time
To: Nathan Chancellor <nathan@kernel.org>, Hyeonggon Yoo <42.hyeyoo@gmail.com>
Cc: akpm@linux-foundation.org, iamjoonsoo.kim@lge.com, rientjes@google.com,
 penberg@kernel.org, cl@linux.com, linux-mm@kvack.org,
 linux-kernel@vger.kernel.org, naresh.kamboju@linaro.org,
 clang-built-linux@googlegroups.com, linux-next@vger.kernel.org,
 ndesaulniers@google.com, lkft-triage@lists.linaro.org, sfr@canb.auug.org.au,
 arnd@arndb.de, Marco Elver <elver@google.com>
References: <20210511173448.GA54466@hyeyoo> <20210515210950.GA52841@hyeyoo>
 <41c65455-a35b-3ad3-54f9-49ca7105bfa9@suse.cz>
 <YKC9CeAfw3aBmHTU@archlinux-ax161> <20210518003859.GC80297@hyeyoo>
 <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
From: Vlastimil Babka <vbabka@suse.cz>
Message-ID: <71416382-2e4c-5e03-df9c-265fda41c2de@suse.cz>
Date: Tue, 18 May 2021 11:28:17 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.1
MIME-Version: 1.0
In-Reply-To: <a1287a21-bcbb-77ed-c88d-f5890b785213@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vbabka@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vbabka@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=vbabka@suse.cz
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

On 5/18/21 2:43 AM, Nathan Chancellor wrote:
> On 5/17/2021 5:38 PM, Hyeonggon Yoo wrote:
>> On Sat, May 15, 2021 at 11:34:49PM -0700, Nathan Chancellor wrote:
>>> This should work I think:
>>
>> compiled well with clang-10.0.1, clang-11.0.0,
>> and gcc-10.2.0 with x86_64 default config.
>>
>> is the condition CONFIG_CLANG_VERSION > 110000,
>> not including 110000 it self?

Good spot.

> Ah sorry, that should definitely be >=3D :(
>=20
> That is what I get for writing an email that late... in reality, it proba=
bly
> won't matter due to the availability of 11.0.1 and 11.1.0 but it should
> absolutely be changed.
>=20
> I have not given Nick's patch a go yet but would something like this be
> acceptable?

Yes.

> If so, did you want me to send a formal fixup patch or did you want
> to send a v4? I have no personal preference.

At this point a fixup is the usual way. Andrew might squash it to the origi=
nal
patch (also with Marco's fixup) before sending to Linus.

>>> diff --git a/include/linux/slab.h b/include/linux/slab.h
>>> index 9d316aac0aba..1b653266f2aa 100644
>>> --- a/include/linux/slab.h
>>> +++ b/include/linux/slab.h
>>> @@ -413,7 +413,7 @@ static __always_inline unsigned int
>>> __kmalloc_index(size_t size,
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (size <=3D=C2=A0 16 * 1024 * 1024) re=
turn 24;
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 if (size <=3D=C2=A0 32 * 1024 * 1024) re=
turn 25;
>>> =C2=A0 -=C2=A0=C2=A0=C2=A0 if (size_is_constant)
>>> +=C2=A0=C2=A0=C2=A0 if ((IS_ENABLED(CONFIG_CC_IS_GCC) || CONFIG_CLANG_V=
ERSION > 110000) &&
>>> size_is_constant)
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 BUILD_BUG_ON_MSG=
(1, "unexpected size in kmalloc_index()");
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else
>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 BUG();
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/71416382-2e4c-5e03-df9c-265fda41c2de%40suse.cz.
