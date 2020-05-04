Return-Path: <clang-built-linux+bncBCI2VAWMWUMRBQP5YD2QKGQE7XWDYWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 146B41C3F76
	for <lists+clang-built-linux@lfdr.de>; Mon,  4 May 2020 18:11:47 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id s126sf29310pgc.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 May 2020 09:11:47 -0700 (PDT)
ARC-Seal: i=3; a=rsa-sha256; t=1588608705; cv=pass;
        d=google.com; s=arc-20160816;
        b=PPvZAdD7P+Okd/ubsFx6+Z80SuDaAENrW+6lxGNXjp5YM2b0+DRQ8sEUdiOivEDQHb
         wo77/KPwjOacOvgysWVgw2V89UgbpaI3xh8HR2kLsU23UsA0Pz2GgcAoCt8O2vQ6dl78
         RfY7wIkU70rcKzgk6q0g79S1PqSkNKopSf13yL4HEoy8lxcX9L9VuzApFE1UWtrsR1YO
         Zua8uNGFUp+iwigytgXmqW2mcQi2g5PyTly151SeoIM6zJFMgErjDcn1VBTMlgdyl/ip
         MvjwqkPUVjcVqY7DvQLjN4aCTx+rkby6CE/O1KPKXVK1e0+77tqp2bjLt1RXyz9XGZtc
         /Bxw==
ARC-Message-Signature: i=3; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:references:in-reply-to:reply-to:user-agent
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=2QuCemLXO7pp8XWpOn3eRWOhpJxF5aiZGojdEWrsHa0=;
        b=0N3EeyYiqJrvSDHLOyDyVySDv/uFk1cyHfCDLCWaS7XItFuwtWU+xOIcctXl9s7WPi
         ZGqIQW/O2xgBM5LJYNPJAI4y4V253h6bTyDVdk6NAdsnEh71AhVYxdIBy3VCs+mrmVZ1
         gILdZAbMNWmRIg/bdmPfVIVUJV7nK/TIqGMmUmF+xZZ1cs7MWTN9NFVIQr263HYcuIWJ
         PTD/7iiU6/q2+VC0X09jqCd42uccrtUCtbcPskvlPEkamsODT6qi5Bc7SXynCqTWFDNJ
         rfZQ704m6CNXbPSWF/lLA+ZZf1KZ1Lh3nWwvaIq0nIjMdaf3J/WQJiX4yFrceaOapf0I
         syaw==
ARC-Authentication-Results: i=3; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b=BtRBiszW;
       arc=pass (i=1 spf=pass spfdomain=flygoat.com dkim=pass dkdomain=flygoat.com dmarc=pass fromdomain=flygoat.com>);
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:user-agent:reply-to:in-reply-to
         :references:message-id:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2QuCemLXO7pp8XWpOn3eRWOhpJxF5aiZGojdEWrsHa0=;
        b=nG4sEzojmwL7kECXKsZtNdySFB6gNBMvXQhZ5cVQUKSoixiTmCLH/j/anbgUr2x0Ml
         x3sy7nWchMzs6uzlEhyL08bv4c8ikzgpK1RExl5jfOrzRKQmhEWz0c9XKhHyRh7NB0iV
         +gWh/gVxwxIFKk2pR9PGLwdw/FzcyD8i9QgfMlAbOICw4EzBp/abi9W6TvSfkbJH7u+J
         q7W7ID7eJ6CUiItny2YN5lKNJ/iL+ixGrnQ4AC/YVz+jAn9YgBfA/3xgh/i5LJAqFYad
         x+0svPEFCWKxd4sb4bPqDHdrqPBhlyrqEqbbXI1zsCG7mplbHsGrQMG/J1jbB51cEj+u
         VAkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:user-agent
         :reply-to:in-reply-to:references:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2QuCemLXO7pp8XWpOn3eRWOhpJxF5aiZGojdEWrsHa0=;
        b=WF9A9qQEmWune/216UBkC21YJ0pu54y7Uix0mEeOSlvQ3L/8gTT9C+uUrKcbsx7EHU
         Pli6gQB9MxvBucq4kM0afv3fN9g9mommCOWTBHEPDywrbxCilHx0cSY1ky4TJpZF1OOi
         TqepEQK4BSOH331RBW3zPUoCg83tWp0bFoEAOlYrDdnwJRaxNTSv/0INf6MSzF8mRoMV
         SMnoF7AfMlyC71k3tASruEFFKhxBjHkgcSKJkzTlAuKCWe/s/+0XWkB6d8k8jFTuS4lT
         leWOP8r+9BCYEI3idpjwqE9aW1DVIxwhcy7VPQQ8gLvpRgP+SVAowAVIcp0LDjltCcDh
         sPvQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuY1NR1A1MRs57umnNO7Ex3PQoBLNdNpm12D/YzudPsmYkKE8q/a
	9U4Ph9qM4jE1Rtu0YVlrbR0=
X-Google-Smtp-Source: APiQypLAZ1GBfaXTzfcflxTixZ9drjtBCfrZa/pKwj4Rlx2wXTm00JsLIdbX+3wl8+k5oN/50VLorQ==
X-Received: by 2002:a17:90a:e38c:: with SMTP id b12mr70403pjz.102.1588608705832;
        Mon, 04 May 2020 09:11:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:56d:: with SMTP id 100ls9997356plf.10.gmail; Mon, 04
 May 2020 09:11:45 -0700 (PDT)
X-Received: by 2002:a17:90a:d24a:: with SMTP id o10mr93263pjw.18.1588608705420;
        Mon, 04 May 2020 09:11:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588608705; cv=pass;
        d=google.com; s=arc-20160816;
        b=oJxP22oSudhogHWerFbFgfE1LSb//oTMZ6v2Z0OHZhgBbve+qrXmgMi7PlBojGeSnh
         ICtFpE2+ZbGpcXOnSbET8ukq29wKfFfxfrglmv2aA0ccjJSz1bvdkPLwSLZWu42fhlMZ
         yEpemkcblE9PgogLfmROCDTMVD1BT3OBdWL+VS41H0vk/wsaT3FBcpmo6er0KW7EAhGn
         sOtjLGMqbJo+7fB2vjzhucoBMJj1sykXaoh7q/LM5edJku8BT/iO6E8eXL6kKf/xesyQ
         KW08gYGm2/xkMEvSWW9sMw+GwJM57+n/bH+y92voI2LhISjQRk5sToicZODUnk8HB0+e
         Ht+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:reply-to:user-agent:subject:cc:to:from:date
         :dkim-signature;
        bh=Zitcy+9ai3qswjZX8GUqfMPQ7VUOo/hNsYYroSdp8Lg=;
        b=bfzAMhtsj8zQxfiYcVsWZuJGFpzCLCcxB5Dnss3tlo0Rv6AKAmGfm3WiFTALDoJVKU
         Msiz6pV/3cIhYtM6h3yc7+70tboPJiG8NMCPJWqA9G2UAVNjt8KXgP9tcbeI8C2BMpQr
         vqHRsHHf0pgA3V966L6zFlBpBVVhCO/Uq2M6o+kW5zIEHS5Ot9ytkbh1J+GQIKC60e9J
         Snqt21w6FK3bfciDeG+MoZFoQgj0WE2NASDzP2CU/6wKC5uJipKgaA4fCC3lo9MvC2ZB
         yWw+0iGrKO+28X+SkhODJC9WxPj/CT+A4ZtBIrX8rQuygSRKQZWPobIvCXLfcGuhBlRH
         UKcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@flygoat.com header.s=mail header.b=BtRBiszW;
       arc=pass (i=1 spf=pass spfdomain=flygoat.com dkim=pass dkdomain=flygoat.com dmarc=pass fromdomain=flygoat.com>);
       spf=pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) smtp.mailfrom=jiaxun.yang@flygoat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=flygoat.com
Received: from sender3-op-o12.zoho.com.cn (sender3-op-o12.zoho.com.cn. [124.251.121.243])
        by gmr-mx.google.com with ESMTPS id t141si63604pfc.5.2020.05.04.09.11.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 May 2020 09:11:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender) client-ip=124.251.121.243;
ARC-Seal: i=1; a=rsa-sha256; t=1588608593; cv=none; 
	d=zoho.com.cn; s=zohoarc; 
	b=i1zTiI6vQghvIRHWFVdCr6eMjt1Ty9sIUKZBB/8sWC/Qe60kjhy3CSjWRhYXApUh7r6sT4T7bvAvdOlU12tNkmSzCqYwaabr9xBSF4kR3rCx9cU/ddUAj1v7R5V1C1q40GPZrd5I4r4rJHHwPNo1fbHCkQSP95WVMflchxDnY8g=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.com.cn; s=zohoarc; 
	t=1588608593; h=Content-Type:Content-Transfer-Encoding:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:Reply-To:References:Subject:To; 
	bh=Zitcy+9ai3qswjZX8GUqfMPQ7VUOo/hNsYYroSdp8Lg=; 
	b=EcE/a6whG8qDaLcAKAHNfA7T1m4PJ6zDEs6+/4YgpKO/5j98aD0D9Hk1zGAU91NX99hHLxwB50OCHFAPouagsq9muVi14B7UTSkxr0QdTOF7eD+BEanTp0tNfTQ+oFcgUdUtfuIS1EHXhLut3LEFmBRqiNkwo2Y33LDuXfp2aEw=
ARC-Authentication-Results: i=1; mx.zoho.com.cn;
	dkim=pass  header.i=flygoat.com;
	spf=pass  smtp.mailfrom=jiaxun.yang@flygoat.com;
	dmarc=pass header.from=<jiaxun.yang@flygoat.com> header.from=<jiaxun.yang@flygoat.com>
Received: from [127.0.0.1] (122.235.211.112 [122.235.211.112]) by mx.zoho.com.cn
	with SMTPS id 1588608590197451.40427373256; Tue, 5 May 2020 00:09:50 +0800 (CST)
Date: Tue, 05 May 2020 00:09:46 +0800
From: Jiaxun Yang <jiaxun.yang@flygoat.com>
To: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 "Maciej W. Rozycki" <macro@linux-mips.org>
CC: linux-mips@vger.kernel.org, clang-built-linux@googlegroups.com,
 Fangrui Song <maskray@google.com>, Kees Cook <keescook@chromium.org>,
 Nathan Chancellor <natechancellor@gmail.com>,
 Paul Burton <paulburton@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>,
 Jouni Hogander <jouni.hogander@unikie.com>,
 Kevin Darbyshire-Bryant <ldir@darbyshire-bryant.me.uk>,
 Borislav Petkov <bp@suse.de>, Heiko Carstens <heiko.carstens@de.ibm.com>,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] MIPS: Truncate link address into 32bit for 32bit kernel
User-Agent: K-9 Mail for Android
Reply-to: jiaxun.yang@flygoat.com
In-Reply-To: <20200504154613.GA14031@alpha.franken.de>
References: <20200413062651.3992652-1-jiaxun.yang@flygoat.com> <20200422143258.1250960-1-jiaxun.yang@flygoat.com> <alpine.LFD.2.21.2004230036480.851719@eddie.linux-mips.org> <B307BFAC-9973-4444-B69A-40B054210E84@flygoat.com> <alpine.LFD.2.21.2004241316360.851719@eddie.linux-mips.org> <20200504154613.GA14031@alpha.franken.de>
Message-ID: <86D4A0AC-59E1-4C82-B66D-6BFC71E08376@flygoat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-ZohoCNMailClient: External
X-Original-Sender: jiaxun.yang@flygoat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@flygoat.com header.s=mail header.b=BtRBiszW;       arc=pass (i=1
 spf=pass spfdomain=flygoat.com dkim=pass dkdomain=flygoat.com dmarc=pass
 fromdomain=flygoat.com>);       spf=pass (google.com: domain of
 jiaxun.yang@flygoat.com designates 124.251.121.243 as permitted sender)
 smtp.mailfrom=jiaxun.yang@flygoat.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=flygoat.com
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



=E4=BA=8E 2020=E5=B9=B45=E6=9C=884=E6=97=A5 GMT+08:00 =E4=B8=8B=E5=8D=8811:=
46:13, Thomas Bogendoerfer <tsbogend@alpha.franken.de> =E5=86=99=E5=88=B0:
>On Fri, Apr 24, 2020 at 01:22:30PM +0100, Maciej W. Rozycki wrote:
>> On Thu, 23 Apr 2020, Jiaxun Yang wrote:
>>=20
>> > > Alternatively, have you made any attempt to verify if actually repla=
cing=20
>> > >the setting for VMLINUX_LOAD_ADDRESS would be safe?  Glancing over it=
s use=20
>> > >there do not appear to be many places.
>> >=20
>> > Limited experiments showed it should be fine...
>> >=20
>> > But MIPS kernel has some design I'm not really familiar with like SYM3=
2 for
>> > 64-bit kernel and special address space design for Trap-and-emul KVM.
>>=20
>>  This only affects CONFIG_32BIT kernels, so SYM32 does not apply; I can'=
t=20
>> comment on KVM.  There's still that bunch of:
>>=20
>> $(shell expr $(...) \< 0xffffffff80000000)
>>=20
>> constructs I mentioned before, so let's leave your change as it stands a=
t=20
>> this time.  Please do rename the variable as I suggested though, I hope=
=20
>> that's not a big deal.
>
>Jiaxun, are you going to send an update with this change ?

Sorry my mail server missed Maciej's reply.

Should I send another version or you just fix it at apply time?

>
>Thomas.
>

--=20
Jiaxun Yang

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/86D4A0AC-59E1-4C82-B66D-6BFC71E08376%40flygoat.com.
