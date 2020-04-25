Return-Path: <clang-built-linux+bncBAABBB5VSD2QKGQEWLDECMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id CF5911B85FE
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 13:09:59 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id o26sf5738351wmh.1
        for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 04:09:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587812999; cv=pass;
        d=google.com; s=arc-20160816;
        b=aASWri2LME6eekV3qj0Ib65iF4nUzNXElOMHSNvDd0nj6hEtjRZlhODs8fObN/uisK
         K44XWtFA2HDHiPf6llCPS4jOll5UW5VJT98a30LQwJh0tk/eYoalduVL08wl0BIPCnVy
         eyerduWxPx3gQOwcsnn5fUL052l5e4w34Se1F4Sj4yoZSFgf8md0yydR/QfJZIB/MHHN
         XY23Uf2jvzbERANehpcGArw+o79Vdc/KpB6UavnQaBMkIoDnza3Nat8/ZKZCzsbRbScB
         bNfVh+WyiQavkC29ebUqNdhFgxc/HAG7eoFOtEsFUow6AB18gqxX7E95dBaBy/hk/eu7
         rang==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=bkugdT1EISIs3bfD8K7OAzZzJaC2zYUHAuHr0ghzL9w=;
        b=l6/kmG7sTZKzF/2mzsccZV3qVW6yYcxAfFjdiMnwLmvkeyJGwNTLTl8V5SkvPkaoDU
         OMIEmIhgBKXexc12uRKr42Ie2APSYWRWx0QehY77rlXOkDTVhz2kmNX9BB4ceE4N/YFh
         hZzrLCJZfFBenvImNwQ/aRbbDM7PoXdZS8eMohe8z27jKSfdQMdRB0bkZXKFmdjyszaA
         CvwajGlx2vWmd+DEqIwzu+CY7ggvKNV05d5TqNIIrM/bZMRvbi/bdm11nioKisOEQfpc
         VEPqGu3lEFYz3qZBjPZ9L01YfYQy4ioVtHnPpCknjMPrRFxmQh+GujM+AyHpmC179ox7
         8SxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkugdT1EISIs3bfD8K7OAzZzJaC2zYUHAuHr0ghzL9w=;
        b=lohf+AN9tlMNQVHaPFfs3/Bk8qUIFyNVEVze6eM2Ul+LRY1EsZyjLDVgXA1uuGKzH+
         z5zVBEBEuLOLfnLXj5XYjMEsTn4aWY4bqz79gCso3s1GQtCKvzPzFZsxCi01y1fdyXjX
         tw8cNSeuKrSTvw83+NJt7FH6pZw8hmFKIZ4/qs0/kIgZwqC6Pa6ljO4w0fma/kNeTt9i
         G+FK9bPWDGVmy85/S+h/Vawc145L3mtIk+Y38WyS2unKZ4F6iuXdVzamn8BnjuClWh9G
         kVKQe4PBN5Aj2GJ5ehlgM1AGig9M4PU8AHgPgaGlb+l6m0Hzjc5KmRaC3l8yxwVU3H0R
         NGyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bkugdT1EISIs3bfD8K7OAzZzJaC2zYUHAuHr0ghzL9w=;
        b=l1GQMCtI8fNT65wyJVGVdcScD72JQQMbBp72tayU/KZC6p8FpxqG8Hz95U298zvvyc
         xAVZj4XGFw10Z5sHuQppE+pRFONeqeJHYN7Sd+lrVZQoT8CRCnkrituB205EZ3/r4FnK
         aG4grWaeecctbsAj7lH8xKS9+5vXB9+WX7UtMdMy9lm+slLn6BbfJLhjuZJ//drlywMg
         0JwjEC+QlXDPo2iUsMdql1tkbEYHU+lchp7EtEoV4llcie47STdhRx8XdbnVBCPwha5R
         kAdf63/vjPq/jmwsVYI6qThX7tfTU2qxFx8GL8Zkkv8UW+3dnBR8JMVjd1ni/NvcT2qJ
         JH+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYOs/2NEwm+fYoxo6A5NlHweheUnKiKAfBYpMr8HsMpKVUE2sWt
	N/ETk90E4HqOn7sTng3ykjk=
X-Google-Smtp-Source: APiQypKbWw4OyEnDtKPYTwdfAk8idi4uOCGxzd5KIZGW02Duo+97dcqL17SJAkBNGhQeQUJ0HCt6sw==
X-Received: by 2002:a1c:dc55:: with SMTP id t82mr16467723wmg.12.1587812999528;
        Sat, 25 Apr 2020 04:09:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a754:: with SMTP id q81ls12642488wme.3.canary-gmail;
 Sat, 25 Apr 2020 04:09:59 -0700 (PDT)
X-Received: by 2002:a1c:e087:: with SMTP id x129mr16014681wmg.127.1587812999032;
        Sat, 25 Apr 2020 04:09:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587812999; cv=none;
        d=google.com; s=arc-20160816;
        b=cknoSxTWDTZXL55339sbuQV09e50QuRJWZOGoPlSdKb+HaFU8VliCwdbE3ivFUxONH
         LrszmkI0eq97ssPLWm5OqYXh0w90vRcEnDN2cqvKpn+erRd/J7m12f3KMhUHP6lTNdnU
         dkmi6vnh7tdyYv0NQXJ1RLSc/VO6M7JMs6h0CXYE1erQ8LuXlHyn79nwx/0HenSgNVnj
         0z0+YAOXq6gM16Hu4U2eKlKpjoKVashCAKYAnhRN6OC0VH1xoliAaO2Rk8d+013XGlO3
         SiVt+ZaPvvWkxJyiMtlPIcv+I/vSjK5k8cN01bDZK1BPrv+GOUkf4+7b9wRc6RwnYJXO
         PRsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=der1/DmaRryShWyEusSXygQSqzNYs9Hyp6vKjaV8CDo=;
        b=n1jqDUqWVeJAxuFsAdquI2UYxEtnVjPFRm2Qa9ypLkkEwhYgrmwYVfSF3EBcaG6tlP
         TlyE9hkN7QVnNtmuYtAK9gQHzi3GdgtbtAvXn8nOTKzDalHVkuCN0ThOqvY2Rd5/stOZ
         5u1UoL8D+kO+q9tYItKzMF/8sYwp8uMhmKZ1j7VQ9iYVYXBlGPWCusFyFs4EozUFDLMA
         q3ovFShoiuhPonCCqbfotC/35Turv93zZTyCLAV0D72I6MO8zBmrqcyMxf4CNHn0TOlN
         t9OifE06lEg5+d2zPcHTWilGAiDZwrmjVvkBU3Q0KbZ2N6GBSl57KqBRRnNTtmG8m+2B
         jZ9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) smtp.mailfrom=jgross@suse.com
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id u25si226888wmm.3.2020.04.25.04.09.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 25 Apr 2020 04:09:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id A3D3BAC24;
	Sat, 25 Apr 2020 11:09:56 +0000 (UTC)
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
To: Borislav Petkov <bp@alien8.de>, Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
 Jakub Jelinek <jakub@redhat.com>, Sergei Trofimovich <slyfox@gentoo.org>,
 LKML <linux-kernel@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
 Andy Lutomirski <luto@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
 x86@kernel.org, clang-built-linux <clang-built-linux@googlegroups.com>,
 Kees Cook <keescook@chromium.org>, =?UTF-8?Q?Martin_Li=c5=a1ka?=
 <mliska@suse.cz>, =?UTF-8?Q?Fr=c3=a9d=c3=a9ric_Pierret_=28fepitre=29?=
 <frederic.pierret@qubes-os.org>, boris.ostrovsky@oracle.com
References: <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic> <20200423161126.GD26021@zn.tnic>
 <20200425014657.GA2191784@rani.riverdale.lan>
 <20200425085759.GA24294@zn.tnic>
From: =?UTF-8?B?SsO8cmdlbiBHcm/Dnw==?= <jgross@suse.com>
Message-ID: <1fbcc917-420a-10a6-26a6-047b0b1c4783@suse.com>
Date: Sat, 25 Apr 2020 13:09:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <20200425085759.GA24294@zn.tnic>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jgross@suse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jgross@suse.com designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=jgross@suse.com
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

On 25.04.20 10:57, Borislav Petkov wrote:
> On Fri, Apr 24, 2020 at 09:46:57PM -0400, Arvind Sankar wrote:
>> The comment above boot_init_stack_canary's definition should be updated
>> to note that it needs to be called from a function that, in addition to
>> not returning, either has stackprotector disabled or avoids ending in a
>> tail call.
>=20
> How's that?
>=20
> diff --git a/arch/x86/include/asm/stackprotector.h b/arch/x86/include/asm=
/stackprotector.h
> index 91e29b6a86a5..237a54f60d6b 100644
> --- a/arch/x86/include/asm/stackprotector.h
> +++ b/arch/x86/include/asm/stackprotector.h
> @@ -55,8 +55,12 @@
>   /*
>    * Initialize the stackprotector canary value.
>    *
> - * NOTE: this must only be called from functions that never return,
> - * and it must always be inlined.
> + * NOTE: this must only be called from functions that never return, it m=
ust
> + * always be inlined and it should be called from a compilation unit for
> + * which stack protector is disabled.
> + *
> + * Alternatively, the caller should not end with a function call which g=
ets
> + * tail-call optimized as that would lead to checking a modified canary =
value.
>    */
>   static __always_inline void boot_init_stack_canary(void)
>   {
>=20
>> There are also other calls that likely need to be fixed as well -- in
>> init/main.c, arch/x86/xen/smp_pv.c, and there is a powerpc version of
>> start_secondary in arch/powerpc/kernel/smp.c which may also be affected.
>=20
> Yes, there was an attempt to fix former:
>=20
> https://lkml.kernel.org/r/20200413123535.10884-1-frederic.pierret@qubes-o=
s.org
>=20
> I probably should point the folks to this thread. CCed.
>=20
> Boris O, J=C3=BCrgen, I'm guessing I should fix cpu_bringup_and_idle() to=
o,
> see:
>=20
> https://lkml.kernel.org/r/20200423161126.GD26021@zn.tnic
>=20
> or do you prefer a separate patch?

I'm fine with you including it in your patch.


Juergen

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1fbcc917-420a-10a6-26a6-047b0b1c4783%40suse.com.
