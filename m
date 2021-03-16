Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBBQOTYSBAMGQETWQRFRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 19B8D33E0E6
	for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 22:57:22 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id o8sf14066301ljp.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 16 Mar 2021 14:57:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615931841; cv=pass;
        d=google.com; s=arc-20160816;
        b=KN/qmoK3IGoo9Iq1mJNIOM7HGwncNt5q0zGFf1uV1SXatklvN3IqewoArxHXEcn5Ub
         xglzLvrgQMceAV0UxUuRwcgZFupXNR+D2W6Ls4ak+wEBOxJvPrFbl6fV6XE+qVQ9GdYG
         WQfwsfcW3GWERT33P2Q0Oeeixl/ZsXULG5lSzwxU8KMkNzVFWA1UA/YPD/B90Bzo77jX
         xLGzBBntUv4FHtD19jsfaDMM9fxykjh4l4z+Q+0AimsQgGaPEFB0D3iO9IpBV5lmX+yj
         HjdDJhKMNtUe6leTTrILBIDJ/PJuZJuqxNKcb2Y1GmgBlTRazkg//z+1DlU08uwu5QeR
         jqkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=PO2TguBgag3vuQuW05xvLc5ccUQwTgQmOfQqr+/V2tU=;
        b=qbtpYRhLm2BZvcTm4O3VWwuQKlDvfk8M+R0DVCBmoDFkmkciWjwv9Aj9taLpUFblif
         KEcg1h00W6LHSmXGLpDfWYSyngpaMHVKO2aRmDs8ZJDWZ+jDCJYvzC/bR9NAaHV62fUj
         4AcmkRWIMyb/XPNF8It2MNBMNJO40CtCfaAwL4XAd7N0HRqG/5zdvGrM/e9pMzw1IbV2
         qoKzzCMfx8McCz+/Og6PtuoivdYTeiw22g9zJ8FjsxbNMI7WtDXKoUH1heDQza1F6nSK
         3mqMhnc6A7VJIfvG4hSPh7PhJaXwya3m9ki8uSSTvQJsak86ofOD8hxK7xi2QeRBenra
         iV2g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PO2TguBgag3vuQuW05xvLc5ccUQwTgQmOfQqr+/V2tU=;
        b=l/1vupfz1rGnrdk+80Lyty9+lZyxihE5+FHbS5bV5wYbeGHsDCybCP3wEVlbZSTQbS
         oZoBKKTybLM3eOoZHuSTk0A4iAgg5tg7M1t+2OgjKgBXP4Btn/d28Jrh3cidoGVWKWHl
         f8W22gy4EWVfybIPjYA4cEbADHyeLjsLhzXvHRv+wZyt00uFqEsrooMqfEC/zVymgiS2
         0y7qmi1IptVEWEqItRmHA/yiL7ZMtM8A+/5vmkTEZlnxU4Q86vZdd+lbIYFJzYKbD9Xj
         hyOgTijbcJ3KTzECtsBHWMkP+GgAYhTYG6uvEOSBbc56SQojjYoX+HNfO/eRzdvS4SbY
         SK1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PO2TguBgag3vuQuW05xvLc5ccUQwTgQmOfQqr+/V2tU=;
        b=L/gVz+Md1VJTHp+Gq72Td/fudinz7iwtzM0//gYnTdZBw8Yn0fjm850hmD4KpWwYft
         wQZvpKhw5T6SLbmH2wj9mlJsQ5Wa5LSEbUSv0h0ZuoIOZTJlepVLhmuSCNAEU8oLe+w4
         e2rGWjDHw5dTmmazCAQhWNP0+l2lYVdJaFe3Ez6/tMFVf+fgHdoEVKhPGz93x+NfEyVG
         4go8YMKvgAAO9PJnPQ5Bf8XGHXisz8cPlBymA+iOnywG+StBgqwrCaLcf+S6R812F/4t
         b8OYgC0MaLt1/ONJazrGl/NIAh05XoxphO8lOJIppZ8yEMfP/EVz/CPaTTOGTsqAmY6l
         sK5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532i+Xr3LigVm8EX+tJpmRRxUM/a/zO+6Zqr2ChC1S9ybZB0tPcj
	4R1vmQE2dh0S7IbSPhwmmlk=
X-Google-Smtp-Source: ABdhPJybD84YZ/Rgl+L9zZcZIbl25g/+pDJoDQav4S93lR+0E7ZnFr+Bgp9qWnMuDA4StsUPqiLdsA==
X-Received: by 2002:a2e:b80a:: with SMTP id u10mr435514ljo.475.1615931841607;
        Tue, 16 Mar 2021 14:57:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9191:: with SMTP id f17ls4526368ljg.11.gmail; Tue, 16
 Mar 2021 14:57:20 -0700 (PDT)
X-Received: by 2002:a2e:8706:: with SMTP id m6mr457830lji.434.1615931840465;
        Tue, 16 Mar 2021 14:57:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615931840; cv=none;
        d=google.com; s=arc-20160816;
        b=t9XeogB/46rAkFnNA5Wvj0h4p417nhm/hQ/dqh4vz5m2AdOjl5bSxQ609bNRHOvdF0
         cYfx7GpCRGv1qUg4hgJCzRp3Kf1N8f2yjcqjc3L9+NtOG+1ADPG2zP9mQQJLdqnOPG8C
         0c2CcklbGggy2hCVQwawe2CQJQHfvbhxz3HOWktNJPT5biW4T1Y0W5wsaE01A6XRXwBU
         SmD0nP3nb6D8WFU5bDmXA01rBbaWzDWNMd8tDQf4Qjwyiysb6jHyJEdehkI6UfBr1zkk
         jumt+pTrYSUiyuWDAPPGswXLL2u20i5f85LS4nNuuEHzUCz7YwwnN+qfFD8OLOYFA+IS
         dX5A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=YmFif6xekpUcC142H2U7Pq2IuFWoOXGYxSLXNGUlez0=;
        b=xQInPU3aUfxT/wrI2ebp4y/R5e322MOEIQLDaZdOjGqoJHuhQRqwBhIFuQSTXQ2GU8
         2CebRncaUFZmZTJTjGWSveLOCtbuuYEW4TtFJsRyizBozJ42i9mor7FE2xmLytx3zwJH
         dMNc0oCbZWDNg94YwBUnTucW/ESoPNL6MmdWr5pJY600AOGaJx+ue0Uvltf54WIIl+Xf
         4TgK2SjaZfhSghYZbcrD93ibBvJ4RhTlcQvOGHyxo5YmmeexFeHdX/pC0Ky2B9WiviAL
         nKk+ZJ5RPYdC/s45OR8cONHjyGxr9Ub91PY/ujA5YmWIy56bs/CpabToYo3Td3rHJ/wX
         RR7w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id d19si667374ljo.1.2021.03.16.14.57.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Mar 2021 14:57:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy05.your-server.de ([78.46.172.2])
	by www62.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92.3)
	(envelope-from <daniel@iogearbox.net>)
	id 1lMHgh-0001W9-La; Tue, 16 Mar 2021 22:57:15 +0100
Received: from [85.7.101.30] (helo=pc-9.home)
	by sslproxy05.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1lMHgh-000Lt3-CZ; Tue, 16 Mar 2021 22:57:15 +0100
Subject: Re: [PATCH] libbpf: avoid inline hint definition from
 'linux/stddef.h'
To: Andrii Nakryiko <andrii.nakryiko@gmail.com>
Cc: Pedro Tammela <pctammela@gmail.com>, Alexei Starovoitov <ast@kernel.org>,
 Andrii Nakryiko <andrii@kernel.org>, Martin KaFai Lau <kafai@fb.com>,
 Song Liu <songliubraving@fb.com>, Yonghong Song <yhs@fb.com>,
 John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Networking <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>,
 open list <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210314173839.457768-1-pctammela@gmail.com>
 <5083f82b-39fc-9d46-bcd0-3a6be2fc7f98@iogearbox.net>
 <CAEf4Bza3vs3P0+zua5j8kJwCDXeiA3Up+t8f58AqswceHca7cA@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <3b05d3c8-1f4a-194a-098f-0eb7ab43d455@iogearbox.net>
Date: Tue, 16 Mar 2021 22:57:14 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAEf4Bza3vs3P0+zua5j8kJwCDXeiA3Up+t8f58AqswceHca7cA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.4/26110/Tue Mar 16 12:05:23 2021)
X-Original-Sender: daniel@iogearbox.net
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as
 permitted sender) smtp.mailfrom=daniel@iogearbox.net
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

On 3/16/21 10:34 PM, Andrii Nakryiko wrote:
> On Tue, Mar 16, 2021 at 2:01 PM Daniel Borkmann <daniel@iogearbox.net> wrote:
>> On 3/14/21 6:38 PM, Pedro Tammela wrote:
>>> Linux headers might pull 'linux/stddef.h' which defines
>>> '__always_inline' as the following:
>>>
>>>      #ifndef __always_inline
>>>      #define __always_inline __inline__
>>>      #endif
>>>
>>> This becomes an issue if the program picks up the 'linux/stddef.h'
>>> definition as the macro now just hints inline to clang.
>>
>> How did the program end up including linux/stddef.h ? Would be good to
>> also have some more details on how we got here for the commit desc.
> 
> It's an UAPI header, so why not? Is there anything special about
> stddef.h that makes it unsuitable to be included?

Hm, fair enough, looks like linux/types.h already pulls it in, so no. We
defined our own stddef.h longer time ago, so looks like we never ran into
this issue.

>>> This change now enforces the proper definition for BPF programs
>>> regardless of the include order.
>>>
>>> Signed-off-by: Pedro Tammela <pctammela@gmail.com>
>>> ---
>>>    tools/lib/bpf/bpf_helpers.h | 7 +++++--
>>>    1 file changed, 5 insertions(+), 2 deletions(-)
>>>
>>> diff --git a/tools/lib/bpf/bpf_helpers.h b/tools/lib/bpf/bpf_helpers.h
>>> index ae6c975e0b87..5fa483c0b508 100644
>>> --- a/tools/lib/bpf/bpf_helpers.h
>>> +++ b/tools/lib/bpf/bpf_helpers.h
>>> @@ -29,9 +29,12 @@
>>>     */
>>>    #define SEC(NAME) __attribute__((section(NAME), used))
>>>
>>> -#ifndef __always_inline
>>> +/*
>>> + * Avoid 'linux/stddef.h' definition of '__always_inline'.
>>> + */
>>
>> I think the comment should have more details on 'why' we undef it as in
>> few months looking at it again, the next question to dig into would be
>> what was wrong with linux/stddef.h. Providing a better rationale would
>> be nice for readers here.
> 
> So for whatever reason commit bot didn't send notification, but I've
> already landed this yesterday. To me, with #undef + #define it's
> pretty clear that we "force-define" __always_inline exactly how we
> want it, but we can certainly add clarifying comment in the follow up,
> if you think it's needed.

Up to you, but given you applied it it's probably not worth the trouble;
missed it earlier given I didn't see the patchbot message in the thread
initially. :/

>>> +#undef __always_inline
>>>    #define __always_inline inline __attribute__((always_inline))
>>> -#endif
>>> +
>>>    #ifndef __noinline
>>>    #define __noinline __attribute__((noinline))
>>>    #endif
>>>
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3b05d3c8-1f4a-194a-098f-0eb7ab43d455%40iogearbox.net.
