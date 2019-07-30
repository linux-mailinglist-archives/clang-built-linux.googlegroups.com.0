Return-Path: <clang-built-linux+bncBCXLBLOA7IGBBLNM77UQKGQEGNSQUAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 94CD37A057
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jul 2019 07:31:25 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id v7sf31314462wrt.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 22:31:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564464685; cv=pass;
        d=google.com; s=arc-20160816;
        b=y540vypvfT23kYy3wyFaHsFaMdg7M3CbKe/lJPJFQgLwP3O+qsw9D7ElJokrW6BeNC
         gLSTawQ9QuQ1fPXSreEpMUfrlejEwGLM3mCyhKgMlsvMkhT6bcsczjI/ITZHSjhyBPoq
         IB+jm5sBd6GHlU5iYkhb3YJlcGirMLVAXUKosk4ndziMqTZXKH0c2Clq3giDGhA4XEBj
         lA16f+Gca5lJEoXJiOZgKhMql4mlVfy/rHA7OSoQ3j5ddPyy67VMdpTc3k8crOHYR2AL
         cUSw1ehbs1anvutTwGgjYhSHDL66GFDAQNc6+w3qKyFtMGx+KSqaTUfT3DRSimpHTJxL
         uR6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=uJFGhcUKsvvxJ0s8BAlOwekVhOqBJRJe6WbIf+lUHAY=;
        b=J5G+P30p6dT20XymsvC7BqOPhrc9ZxWSbF2KCfJGXciPmiSwPPzo71N3C5L5tbjHGy
         kX8S9HvmyIeSstUEXwe8ioyt7LWKaJGB4vuxydBwCHil5LTO0WlVPri+TjvEV4RnJjFT
         gG4CiNen8PejO7Kqztz+nSlwvQmYjmlzcOC+iLc494RWv2rc+uKrXy+C0PCgr+Q7OUVJ
         IrqiVOcsiPzVIyOyhTgdmenJB/5p34ZEfEyE3lnQmDsM2BtADxbTI1wNN66GeTpwyOLG
         8X9+UzlqD0EkFSEfEgyhx4WUZh1B81i2h6eS0IvhLZBuzW1LY2xF203NuSWmmV1PUWhJ
         koOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=qyEzDSXc;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJFGhcUKsvvxJ0s8BAlOwekVhOqBJRJe6WbIf+lUHAY=;
        b=gJEWV89aoPJX8Kb2bwtd+L7X6v9yUClTjIoUgrRXkEJamFiItBRJLnbAxb3xZCrkXM
         WWRNE2wqPSFc48uwumG73he57b8cvkrPY1MFu/GEnd5AoHdJkQJVYNQ1TutNfmKXPo83
         7rPcExPHd84TcWlJotYa+CSW8RwlWkNYUtmVU3CTaMbMCcu+82FvZav8Kn4AOUFN3ard
         HT/6QUjQ/r4Wh+xQynkqrm7YWCpZM2omDHpO/z+Y42wPSkUvKPs+675/AKObHZLMNSws
         e28VeEQMRUARhks9x6YS1/D5O8a7/1vLrt+IRI7/L0+oLWFESyZBAdHuSqNvjIGhXCNF
         6H3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uJFGhcUKsvvxJ0s8BAlOwekVhOqBJRJe6WbIf+lUHAY=;
        b=nTtttJK2KwKNYAZ6+N3QKJ1zaD1ZxhgS+f6Wx7+4pM0/WJ6SFFYIGcIKH2p+sJdBOP
         WJCxuPg5F7Hst1UulU9ywDtNqn6jnQwmE26y2TZ2+43tHiscF60thVog++15toUbTgEM
         KaeHePMPYfZzf7I6L2Pufxw+/g/4MS04msMR7/vNTjdEj9V84qg9rIHy2OiMUvnvh/L5
         r8PI6H8WC1nb7//euuyAkpd32b1F1qZLVoMbjRGPeK1rfwMpiEdNM9R4IAZE3/VhRVF5
         mx0//2Khb/jpcD11Ub8xN8HvA+hCTbDQTOO4ttOxd5UGNlr+DkTpYwi5DMKQdIjFMAzN
         S5wg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW6L7oASSEwWWKGl1Y+ZfR5sbtFNGHcFu7NeturYV6E7GMIWAjE
	eVZcTPwK1PSbodquz3M6cvU=
X-Google-Smtp-Source: APXvYqypinAutT5C3HoVyS3HjQk9HUGxQ8kbjmAWYmnsX+Xml153LhaJ1xxnnha3vE5E0Dq9wFa3oA==
X-Received: by 2002:a1c:f20f:: with SMTP id s15mr27183833wmc.33.1564464685277;
        Mon, 29 Jul 2019 22:31:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ea50:: with SMTP id j16ls18986407wrn.9.gmail; Mon, 29
 Jul 2019 22:31:24 -0700 (PDT)
X-Received: by 2002:a5d:5607:: with SMTP id l7mr130869050wrv.228.1564464684685;
        Mon, 29 Jul 2019 22:31:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564464684; cv=none;
        d=google.com; s=arc-20160816;
        b=CfDN0QNCBGwXUJgyGWqAFbrfxEJP7YBfgvSHWuvaYMAbBCKGGXI24MIKfY439nh7yS
         qeAvtlNI8cIjI2VbGZTdcl14XwXAISUnxUKe6HHOYwo59gNXTI52mJg0llQNicu3t2NP
         9A0jiPTlXRoLf82Xn8L5vEKY8zr3btDN26wvO6rSdt3oGMap3XwZLPd4zeuivsJKeSms
         WOxyjdgjmmogWsaRWBy44kD9KFPOTvbwik7mQqw8Q546KedLlYfsyqtyEdjWlHlNW3zt
         AaNnUhuTaq+kJ577tAHSHcVk+/NVdEszBphjq1sN4Ujs66MZrfRoAGroWZnFMMenfp93
         Dmmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ePSetGxy2Hgvqtd+MAQAGKMxy2rhqR0kq9ZlpTUXHps=;
        b=ZM/MvGLp9WTp1dyB2m1hz63jU1TclVyk2WAOgZuV8HvyOZ1j34ZFIkPKgzKe4dBu02
         hFKJZ+Qq8xdoT51Tekcuf3anHfhIxE3lfwst6aup4PmMlOBXLmLoFR01BqKSoyssmaMC
         AxXi/HE4YSGPWIZPznMa7qDPY3azfho8dRGpaURGTn0Af4ZovSgQf/HEwlauqNtyw1q1
         WXiaVzoZMVbEZexP3E72DEp7T2tHJweu6EqXJOehsgsXG0VILgl9Cp/p2/9vuXLlMmCY
         zIcqy25+LLO6LtD9gnyle90DhFvhuTyT1yjzwCER1R6PVDHI7zyr9Flxy0PvigYZqlR8
         gqfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@c-s.fr header.s=mail header.b=qyEzDSXc;
       spf=pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) smtp.mailfrom=christophe.leroy@c-s.fr
Received: from pegase1.c-s.fr (pegase1.c-s.fr. [93.17.236.30])
        by gmr-mx.google.com with ESMTPS id r13si3136482wrn.3.2019.07.29.22.31.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 22:31:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of christophe.leroy@c-s.fr designates 93.17.236.30 as permitted sender) client-ip=93.17.236.30;
Received: from localhost (mailhub1-int [192.168.12.234])
	by localhost (Postfix) with ESMTP id 45yQCH3NcVzB09ZT;
	Tue, 30 Jul 2019 07:31:23 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at c-s.fr
Received: from pegase1.c-s.fr ([192.168.12.234])
	by localhost (pegase1.c-s.fr [192.168.12.234]) (amavisd-new, port 10024)
	with ESMTP id rd-v7jPqQJgu; Tue, 30 Jul 2019 07:31:23 +0200 (CEST)
Received: from messagerie.si.c-s.fr (messagerie.si.c-s.fr [192.168.25.192])
	by pegase1.c-s.fr (Postfix) with ESMTP id 45yQCH2HdXzB09ZN;
	Tue, 30 Jul 2019 07:31:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id 27A588B7F1;
	Tue, 30 Jul 2019 07:31:24 +0200 (CEST)
X-Virus-Scanned: amavisd-new at c-s.fr
Received: from messagerie.si.c-s.fr ([127.0.0.1])
	by localhost (messagerie.si.c-s.fr [127.0.0.1]) (amavisd-new, port 10023)
	with ESMTP id 8Lk1aYWXxBaY; Tue, 30 Jul 2019 07:31:24 +0200 (CEST)
Received: from [172.25.230.101] (po15451.idsi0.si.c-s.fr [172.25.230.101])
	by messagerie.si.c-s.fr (Postfix) with ESMTP id F1AFC8B74F;
	Tue, 30 Jul 2019 07:31:23 +0200 (CEST)
Subject: Re: [PATCH] powerpc: workaround clang codegen bug in dcbz
To: Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: mpe@ellerman.id.au, segher@kernel.crashing.org, arnd@arndb.de,
 kbuild test robot <lkp@intel.com>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>,
 Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20190729202542.205309-1-ndesaulniers@google.com>
 <20190729203246.GA117371@archlinux-threadripper>
From: Christophe Leroy <christophe.leroy@c-s.fr>
Message-ID: <8f2331db-151f-a481-23e0-ec6dd9ba6f1c@c-s.fr>
Date: Tue, 30 Jul 2019 07:31:23 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20190729203246.GA117371@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: fr
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: christophe.leroy@c-s.fr
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@c-s.fr header.s=mail header.b=qyEzDSXc;       spf=pass (google.com:
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



Le 29/07/2019 =C3=A0 22:32, Nathan Chancellor a =C3=A9crit=C2=A0:
> On Mon, Jul 29, 2019 at 01:25:41PM -0700, Nick Desaulniers wrote:
>> Commit 6c5875843b87 ("powerpc: slightly improve cache helpers") exposed
>> what looks like a codegen bug in Clang's handling of `%y` output
>> template with `Z` constraint. This is resulting in panics during boot
>> for 32b powerpc builds w/ Clang, as reported by our CI.
>>
>> Add back the original code that worked behind a preprocessor check for
>> __clang__ until we can fix LLVM.
>>
>> Further, it seems that clang allnoconfig builds are unhappy with `Z`, as
>> reported by 0day bot. This is likely because Clang warns about inline
>> asm constraints when the constraint requires inlining to be semantically
>> valid.
>>
>> Link: https://bugs.llvm.org/show_bug.cgi?id=3D42762
>> Link: https://github.com/ClangBuiltLinux/linux/issues/593
>> Link: https://lore.kernel.org/lkml/20190721075846.GA97701@archlinux-thre=
adripper/
>> Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
>> Reported-by: Nathan Chancellor <natechancellor@gmail.com>
>> Reported-by: kbuild test robot <lkp@intel.com>
>> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>> ---
>> Alternatively, we could just revert 6c5875843b87. It seems that GCC
>> generates the same code for these functions for out of line versions.
>> But I'm not sure how the inlined code generated would be affected.
>=20
> For the record:
>=20
> https://godbolt.org/z/z57VU7
>=20
> This seems consistent with what Michael found so I don't think a revert
> is entirely unreasonable.

Your example functions are too simple to show anything. The functions=20
takes only one parameter so of course GCC won't use two registers=20
allthough given the opportunity.

Christophe

>=20
> Either way:
>=20
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8f2331db-151f-a481-23e0-ec6dd9ba6f1c%40c-s.fr.
