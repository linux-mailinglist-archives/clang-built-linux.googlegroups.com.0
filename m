Return-Path: <clang-built-linux+bncBCXLBLOA7IGBB2WFRXZQKGQE565OEWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 0575E17CD18
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Mar 2020 10:01:31 +0100 (CET)
Received: by mail-wm1-x33e.google.com with SMTP id c18sf1504266wml.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 07 Mar 2020 01:01:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583571690; cv=pass;
        d=google.com; s=arc-20160816;
        b=XCc2NcbiLdFeKz7APGDiQ9/wd9kv8QDB0Yj4M4bJGLMcSqoOBJgKMPALtgp1qwiL0c
         Mtu0hbOiqyq6UE0RkhJvQcfjWCUA6A3L0EGSL+jxcUEOugEma3KJmMhPeCCC7OZRqtpg
         Vp1bpp+ol5uuv7ACb9/iJFL9ptktmfW15uGuIFalngPnzxEfmWMIDSBW2sYjzrnJ/An6
         D36diB5gg+TrwRCObwyEmxrWN2LTr2KTgsvHjU9QmzEcV06pnr0HRig26gtBCuMp8Cst
         84Y3UcNpU5JvukHyi33cQB5NlU153UDNLsBezZV/1NiilGVsl9+UHY3d9BbwR/JPNuMJ
         aVQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=8e5F0JuSQWSVCvuD+93b59+lOK0hlEVpDazFvmM39b0=;
        b=Slv85aIyqA8uZVfg+KT69kCj+u5g4o3ppWQiZEcO4enHtcWpi+YsiTKrH2leaqu4BQ
         u++qLmnH1yAW2rJV2cF20m7NFp66LKF1QdZGPEjnmJEhnfPXx55jaoky8XlvwVQh47DR
         wkVYU09rHBZNd1mnxDCs0KypPtD4tXr73q+6MYwPRmeOJzhGBhEooSpy4g71zmQCewH/
         EpHKvfpeteDJF53DV8rVUArTG1fCmEFhsJ3ppCh3GpQO8Hk6w1kIQF5fM+ZLwPwH1xWs
         xyUjHBhI958KoaK3h1d2jmllJLPt8no+pbxFkhSSNSQ8PNlN8AjRS37AiaMt2/o1Pzkd
         Kpqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=rLdYlKcb;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8e5F0JuSQWSVCvuD+93b59+lOK0hlEVpDazFvmM39b0=;
        b=WhWjYA8SN+jGguX/G5TRXRG3wwj++EB9bq7vzz00KhvwCOP+P/y+119WX5S7BUG4WT
         T3ZSJOa40tI+bjYjKDa9mqE99Oj8hOfip5tj7wdIVaIVa9cy8QXtdLzjaZNtR4NK+uCc
         6zbV6JU4Fig+HznoNuiz3Dz3F2jBZwRGXhzPT9LSsdOz10hjYEkFi31GrNhOTHWkr80/
         khblNdZrm0gwGC2uebk/vavhyCp+g6Q1YpRUZ8qyllcQs4QQ05D25X2Pqve41CJdjkWk
         LjT9IZUqOEoxiyXh4z5iW5QdoOBghHysx+RJ9pOYRkknOAxWDxzXuVWiwW5p6gsRUJeu
         rWkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8e5F0JuSQWSVCvuD+93b59+lOK0hlEVpDazFvmM39b0=;
        b=gV++kWXaBzFn1/GlwfljxXjabXxq9B3XlhQCnyE7HK/W+EDy0BCoWnNjDIw0lSMfCo
         KtRqJN9snuIJv5bzYeg9KnKRMZWiU2zDJFeulsFZ1HtVvwVlBgMyVWB9YdwNiZJv7PXU
         ovL1cu5yx03X0MgVtjS4I+6b9jrJESa4T+g2mRP/q9bJO10v1sni4tT6J7gcAQ9sGCah
         sVt54a7c2z0T/6565mYhlMItDszBLT7uLqfOxI0N7oHScwyYUmJ3zkYj9tFsqkpEh8yK
         lEN5ZiCOro79iBCwkJThnUrq/Ew/IganSluOKz9BfnmQhj6dRRcPTzMDSRNnBKd1y0hy
         USjw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3QdC9JH+jYeC4wNOXiaRfzjEW2qSSUJXJUO2vN1okMS3DGptqw
	789k1YgJ8waYuhDJsz0PPeQ=
X-Google-Smtp-Source: ADFU+vsoWFMd/LMzUiDhn9WyMjdOWwBkj4IZrZGdRKlzz+9dVaYf0MxD7GLuNazftPYKrF/JGZ7mJA==
X-Received: by 2002:a5d:4f8f:: with SMTP id d15mr8626711wru.316.1583571690715;
        Sat, 07 Mar 2020 01:01:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4d42:: with SMTP id a2ls2391068wru.9.gmail; Sat, 07 Mar
 2020 01:01:30 -0800 (PST)
X-Received: by 2002:adf:b60f:: with SMTP id f15mr9175303wre.372.1583571690228;
        Sat, 07 Mar 2020 01:01:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583571690; cv=none;
        d=google.com; s=arc-20160816;
        b=c+A68nC1hfLOV2y3bIvvs3X2bU6danRt+ocL/YjpVaS/mYpA8jBc2Bq0DU7xeYBFdR
         zi7XO/Qd5j8D4KAPefjTa+K1vpgWcPUqhbym+sUIX7o9IQ9dhU+rdfikktUMYcZBIy2s
         j7Ydd6wA4D92ZRH9RmTJ9QKsAOyOFmnIFIAGA9/2J8C9HvoAEnAo4EVfDRgHtUjoWMfq
         qh1Cyo6IxLTuzmake1N+A7cwKnYKZQ3hdDGy/71WBYNbUW7fbcK5kWeEtnJBG31IWRJz
         0ILt7Nv7+BCWQ+00rzuNan1oFLkalGHlbbkzxqCxhtZpCGT7E0ZESWhog9IRfKEBPV5/
         ZJAw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=3wF1uoMh2XQX42L0mI+Hcc5AlA4h7HEwVDLgAO2jbBg=;
        b=EEoXqytM6u2S73gMEu5cAgZfuzWGLQUIGVmC9lq0Rdi90WwX89imllk+OnEvDpipAp
         0zyrP3AZbAxSuHSABRHZVOxe0jWRBAwmqz+/N+mAGNNDkoAnrRtDx1GnY4dXv67slDaW
         8NZ6XvygIoLS5opAya7WFfvQ4oB5NpHs24vbnkm2um5DAOAUKRRnUYnN59pr2iCwrkRJ
         kXiyF98opB05hQ65kWHYNN/UZJHjVkLVt7ndEB2MV6VpNM8aV5ZQctCoKJeFldl5FC1l
         zji8wAZYGk1hfAmL0NsivXOU7KrDspc2xFI6kWz/UXwkalDPSQEV6Wb3yiFGQYH/I/0u
         g2Dw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=rLdYlKcb;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id l13si216859wrp.2.2020.03.07.01.01.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 07 Mar 2020 01:01:30 -0800 (PST)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 48ZJPh5nKWzB09bK;
	Sat,  7 Mar 2020 10:01:28 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id YjQ79p_AmCTJ; Sat,  7 Mar 2020 10:01:28 +0100 (CET)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 48ZJPh4mYfzB09bJ;
	Sat,  7 Mar 2020 10:01:28 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 47D1E8B785;
	Sat,  7 Mar 2020 10:01:29 +0100 (CET)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id tiuwRBZICa_F; Sat,  7 Mar 2020 10:01:29 +0100 (CET)
Received: from [192.168.4.90] (unknown [192.168.4.90])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 6D5018B776;
	Sat,  7 Mar 2020 10:01:28 +0100 (CET)
Subject: Re: ppc32 panic on boot on linux-next
From: Christophe Leroy <christophe.leroy@c-s.fr>
To: Nick Desaulniers <ndesaulniers@google.com>,
 Michael Ellerman <mpe@ellerman.id.au>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>,
 linuxppc-dev@ozlabs.org
References: <CAKwvOdk=eFqRqN0KO1en9wH-NhcvwXbx_ntmUtf8h_xZSd-qKw@mail.gmail.com>
 <3702b680-a0fc-20dc-027b-518b880f9a41@c-s.fr>
Message-ID: <c084a429-9ea1-7126-f057-8647a2e0dfac@c-s.fr>
Date: Sat, 7 Mar 2020 10:00:44 +0100
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <3702b680-a0fc-20dc-027b-518b880f9a41@c-s.fr>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b=rLdYlKcb;       spf=pass (google.com:
 domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted
 sender) smtp.mailfrom=christophe.leroy@c-s.fr
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



Le 07/03/2020 =C3=A0 09:42, Christophe Leroy a =C3=A9crit=C2=A0:
>=20
>=20
> Le 06/03/2020 =C3=A0 20:05, Nick Desaulniers a =C3=A9crit=C2=A0:
>> As a heads up, our CI went red last night, seems like a panic from
>> free_initmem?=C2=A0 Is this a known issue?
>=20
> Thanks for the heads up.
>=20
> No such issue with either 8xx or book3s/32.
>=20
> I've now been able to reproduce it with bamboo QEMU.
>=20
> Reverting 2efc7c085f05 makes it disappear. I'll investigate.
>=20

Ok, I found the problem. virt_to_kpte() lacks a NULL pmd check. I'll=20
send a patch for that.

However, if there is no PMD I guess this area is mapped through some=20
kind of block mapping. Therefore it should bail out of the function through=
:

	if (v_block_mapped(address))
		return 0;


Can someone who knows BOOKE investigate that ?

Christophe

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/c084a429-9ea1-7126-f057-8647a2e0dfac%40c-s.fr.
