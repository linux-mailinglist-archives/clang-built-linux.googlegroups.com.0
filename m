Return-Path: <clang-built-linux+bncBD5ID66FXMARBPUMUSDAMGQESX5SH4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id A23DE3A89DF
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 21:57:50 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id t11-20020a056402524bb029038ffacf1cafsf13654196edd.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 12:57:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623787070; cv=pass;
        d=google.com; s=arc-20160816;
        b=h/QYOHnx0R2wAHcrpVFTIRlFN9Qz4HWf4v6oe8D05Qdv8/dQwA0SbDZwnNzZSiIKXh
         EijdtWx0OT/SAVgu4cErPs4VtdXn5jtl2Ofy/pk5CqhNnfLWAmbQAKe5lQvK0xScRe+G
         15pHC4qkGSJxzJK1QQ592KP1Imm5NZJ783QwivU6En48oxcmj/ahRo6lIsddvAG4Xa8E
         o7eRMwT4kX2UMmoWTwkRr4RuRiEJJUfbwEAAg1wV5CweXivTyViAjIZaVazFd03zbMP9
         PJ0GP0eQBKt09wQAfHa9ID7OJfn/OsD0DtDFWVgH9Aoz/wElnWbPkeWanJ539rSCygnw
         hZGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language
         :content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature
         :dkim-signature;
        bh=Sjeyvu5rRwye45X1fcckxI7qqSnLbTHSx37LLeBp7s8=;
        b=LpuFuTWJ7vTENEJz2lAZxt8x1jV1+U2i9BJptz3w46pxHyzGnihrJA1dkD52K1J0IP
         EtINvOhKvYVPwFl5TbGeNR9qKro68sAaxCKkCybGrO6ohC2jGADNZbR2aJypPjx2WJTz
         HpEijvocO9UWioRUW5z0e18tPYKjBV9xYaVvu109/IxF1rdjDSJ51aXQzPbgXMAOvTW8
         j7bnBsvRjLFMmvTUufBXIlE6+viZ6bpUo5l8BIwJSYHhR87ppCJ/hceJoGg51ch3tV2C
         uapc1vWyU1xOtLvPtIinKNDwUwEK1AhfC7VN5cpxSAsZ/KnXP3oRTGPRHsOlSy6UF2Aa
         CcRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WwtcqbkB;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sjeyvu5rRwye45X1fcckxI7qqSnLbTHSx37LLeBp7s8=;
        b=c5RA3cyJ9h36WyZMEsFvS/mKS0paKELz9+38mzlQb86pcrH4nmYpyx+qN4IE9fA+dg
         Yk2dYthmTssmjaA1ZG6o6l8RWaZIZaaepItyUu0tSC8zR1L1SrKrk6In9FPkktnLlLWu
         sSnAUC76jVWuXkj/ZzFT+wu3QbHeTnd4cuUiHBzt6NRH6oRijgtsiWkRF1o+iaMFNGEe
         Gb718gMrurc8nezXBUePoM8op9lElnhWtQQVSPKxmDizx3+RVsgf+XPLUnK7YgWZ2c91
         b0zK9tPtgEJZnB1tYmM88YrAmwvc9577PKQB6rdGcQaxn8ChFedWX5VU32GDE9IbwZaV
         vM4w==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sjeyvu5rRwye45X1fcckxI7qqSnLbTHSx37LLeBp7s8=;
        b=OwHD4YKAOoGIKAkDYK30drrxucjEuSCbm2kTtW9qo+7CRaGwVFKp9vLFNDhVvr5biM
         oEmofUZXitSuxRvkTJqYSuGzIxzHg34F6GsOohim7V0+f4q9HOj142GF+QRGuQmQi1bh
         velv822PDMHiPolHyEKFfosptwE/LQJYtl/J0vAv2xjqtRhffrxxphoXDGizI8gKQedV
         8vc3Kwt21gSosqWGdlOfNvCvkFimZ/l4JoQNDe3S7Y+VsQwbWSnArgZOFidUG7YYI/Vm
         e4/exj6vwo+xtyQ1DBT7mHpRjmEfTMbKv8vOH9uxn3mAIHl6O77ShBl+M15CsSJf4Yfg
         O0jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-transfer-encoding
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sjeyvu5rRwye45X1fcckxI7qqSnLbTHSx37LLeBp7s8=;
        b=owzWOBmUeTcqAiaCRsB14FErTLGU7b7ut+8kk1yF1Sh1Mi/GEdYXFTajfPVbd+NrY3
         /ojVZ9QgCJ3/pNjJPMCsXdPMVJQ/exUlaRqoCPBLZjxVxMik187VfR81PmMXaPrOZZST
         CBkcHprmnFh5I2WSmcbTAYK7eSIJ6TtQhTZjzw3ogPQt7e0oei5++yeh9o95bAf8AxnO
         aYLNAuyjwZUIkhRzeh9GArltECHi+9kDYaxWeFtfJlVnIHAGvA5G6tVsAsgz0dexUzzq
         CsZSI0mXM/FhVp0wgImt3SF4P8uiwJE+GZGbaKHH/0pHWFOH9u3DNry4pyU4Dk9i7l5k
         GswQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532+GVNMUj2/wZFdMlpjfFDAEZaKpthfSduW7SwL1ZmR7nEsXSnK
	1pSMvwaVajpbsCAt8c/dbc0=
X-Google-Smtp-Source: ABdhPJy1Pa7DMCRsZeTOT8uVw6q8ukDquz58+1TJCgr67aVLbSfTt13jWoJRDnEzhEeebfkd3X8G/A==
X-Received: by 2002:a50:cb8a:: with SMTP id k10mr1518480edi.267.1623787070415;
        Tue, 15 Jun 2021 12:57:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:30b2:: with SMTP id df18ls12062854edb.3.gmail; Tue,
 15 Jun 2021 12:57:49 -0700 (PDT)
X-Received: by 2002:a05:6402:510f:: with SMTP id m15mr1526037edd.283.1623787069420;
        Tue, 15 Jun 2021 12:57:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623787069; cv=none;
        d=google.com; s=arc-20160816;
        b=Fh7LhGyni+og85PgR9v1H2NMWA9m+TAWLNU+YKRdf8/7u8TFoqJPaDFm5/jB51ayE8
         qexhwZHE1tK77rnMunzs0sfoVV5xekVW/IF4ylil3F16DG/jLanhs9NoyRlwciZ79bKB
         JZK2voMdsbCAHEHxsIgsbVgKRPAS7/kk0c2HXq8CvGkCcRwCzwTWXC9Et2oFPCUCytrK
         88Q1/kszI4sVaxZKhCTBRAeXlruBdoDT3mN/h4qHa1r9DzSCX+x/PKrUL3fXpl5Aou3C
         h6n6qIen48LkBp6/O/vFKCLD3CxvH6jolCPqgVG2KDDs/VwboefyOnBLgoKIsKYvKd2I
         kzaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=72EYrw9RzfP268vjh6MWdoHLEFQXKk7235FbNpwtx3g=;
        b=dvIEpgRyhiMI25Gf1ywyGQdofKKdkJupzCG2krCle1CQfKb2uEqq+h0w1IB3HBrs5i
         Qymd4d2ug0fdDJLSHNSHtIpER5JWFhaME72pEnhsawxf/o4lH9ZAeanCSEdcyo+k62QA
         2Sza8QqiKW4Q4hkHMNcgBkw/84rsmWZAh/W8ol60wieL3wOAPVopi0/BoQKLuzFN4XXy
         gYSpH9VBH3eryx58oyW3onVoTE7R9S5Q5xhkX+ZZS6av6Tq8Dc2gqLBTN40iXEWcfmMe
         TrMChw4KcBYGW1sKrl5P4XBsPyr5TUYvPoRg/QG0VlURy0KcSQWuCnxX/TluMxIaJFtU
         +g+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=WwtcqbkB;
       spf=pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com. [2a00:1450:4864:20::130])
        by gmr-mx.google.com with ESMTPS id s9si1678edw.4.2021.06.15.12.57.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 12:57:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of maciej.falkowski9@gmail.com designates 2a00:1450:4864:20::130 as permitted sender) client-ip=2a00:1450:4864:20::130;
Received: by mail-lf1-x130.google.com with SMTP id bp38so274674lfb.0
        for <clang-built-linux@googlegroups.com>; Tue, 15 Jun 2021 12:57:49 -0700 (PDT)
X-Received: by 2002:a05:6512:3d20:: with SMTP id d32mr746509lfv.517.1623787069204;
        Tue, 15 Jun 2021 12:57:49 -0700 (PDT)
Received: from 192.168.1.8 ([212.59.242.58])
        by smtp.gmail.com with ESMTPSA id y5sm914lfa.148.2021.06.15.12.57.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Jun 2021 12:57:48 -0700 (PDT)
Subject: Re: [PATCH 2/2] Makefile: clang-tools: Omit printing stack trace when
 KeyboardInterrupt is raised
To: Masahiro Yamada <masahiroy@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 LKML <linux-kernel@vger.kernel.org>
References: <20210520231821.12272-1-maciej.falkowski9@gmail.com>
 <20210520231821.12272-2-maciej.falkowski9@gmail.com>
 <CAKwvOd=32_yNvAWRjyczOoEjsWje9SfaB=S1s9kS1bRFZhuU8g@mail.gmail.com>
 <CAK7LNAQtnX6x1AWUU8+7MtUo4OkCrhKjoP=w0-cbH08u__wGWg@mail.gmail.com>
From: Maciej Falkowski <maciej.falkowski9@gmail.com>
Message-ID: <53282d70-c217-d65e-2d30-7a5593d6c585@gmail.com>
Date: Tue, 15 Jun 2021 21:57:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <CAK7LNAQtnX6x1AWUU8+7MtUo4OkCrhKjoP=w0-cbH08u__wGWg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: quoted-printable
Content-Language: en-US
X-Original-Sender: maciej.falkowski9@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=WwtcqbkB;       spf=pass
 (google.com: domain of maciej.falkowski9@gmail.com designates
 2a00:1450:4864:20::130 as permitted sender) smtp.mailfrom=maciej.falkowski9@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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


On 5/22/21 5:03 AM, Masahiro Yamada wrote:
> On Sat, May 22, 2021 at 2:18 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>> On Thu, May 20, 2021 at 4:18 PM Maciej Falkowski
>> <maciej.falkowski9@gmail.com> wrote:
>>> When user terminates the script (also implicitly through for example
>>> `make clang-analyzer`) by using
>>> Ctrl+C (or sending SIGINT more generally) the KeyboardInterrupt
>>> is raised printing stack trace of the execution as shown below:
>>>
>>> $ ./scripts/clang-tools/run-clang-tools.py clang-tidy ./compile_command=
s.json
>>> ^CTraceback (most recent call last):
>>>    File "./scripts/clang-tools/run-clang-tools.py", line 74, in <module=
>
>>>      main()
>>>    File "./scripts/clang-tools/run-clang-tools.py", line 70, in main
>>>      pool.map(run_analysis, datastore)
>>>    File "/usr/lib64/python3.8/multiprocessing/pool.py", line 364, in ma=
p
>>>      return self._map_async(func, iterable, mapstar, chunksize).get()
>>>    File "/usr/lib64/python3.8/multiprocessing/pool.py", line 765, in ge=
t
>>>      self.wait(timeout)
>>>    File "/usr/lib64/python3.8/multiprocessing/pool.py", line 762, in wa=
it
>>>      self._event.wait(timeout)
>>>    File "/usr/lib64/python3.8/threading.py", line 558, in wait
>>> Process ForkPoolWorker-6:
>>> Process ForkPoolWorker-1:
>>> Process ForkPoolWorker-5:
>>> Process ForkPoolWorker-7:
>>> Process ForkPoolWorker-2:
>>> Process ForkPoolWorker-3:
>>> Process ForkPoolWorker-4:
>>> Process ForkPoolWorker-8:
>>>      signaled =3D self._cond.wait(timeout)
>>>    File "/usr/lib64/python3.8/threading.py", line 302, in wait
>>>      waiter.acquire()
>>> KeyboardInterrupt
>> With this applied,
>> $ make LLVM=3D1 LLVM_IAS=3D1 -j72 clang-analyzer
>> ^C
>> Process ForkPoolWorker-5:
>> make: *** [Makefile:1902: clang-analyzer] Error 130
>>
>> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>>
>> Thanks for the patch!
>
> I am not a python expert, but is
> "Let's suppress back-trace when a user presses an interrupt"
> the common coding style?
I think that is not a common coding style.
In this case, the back-trace is verbose and it is caused
by a bug in multiprocessing Pool.

> If really so, do we need to do something similar in all python scripts?
> I do not know what is special about run-clang-tools.py.
I think no, I misunderstood the nature of the problem.
The verbose back-trace is a result of the multiprocessing Pool
not handling KeyboardInterrupt properly.
It is the old bug(bugs.python.org/issue8296), yet to be=20
solved(bugs.python.org/issue22393).
For more info please see:
https://stackoverflow.com/questions/1408356/keyboard-interrupts-with-python=
s-multiprocessing-pool

This issue is already once solved in a Linux source tree in a=20
scripts/checkkconfigsymbols.py:

scripts/checkkconfigsymbols.py:312
 =C2=A0=C2=A0=C2=A0 try:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return check_symbols_helper(poo=
l, ignore)
 =C2=A0=C2=A0=C2=A0 except KeyboardInterrupt:
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pool.terminate()
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pool.join()
 =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 sys.exit(1)

Also the comment:
scripts/checkkconfigsymbols.py:321
"""Helper method for check_symbols(). Used to catch keyboard interrupts in
check_symbols() in order to properly terminate running worker processes."""

> For example, if I press Ctrl-C while building Clang
> by using tc-build, I see a back-trace.
> I have never thought back-tracing was annoying.
>
> The exit code is 130 regardless of this patch.
Okay.
>
> BTW, I prefer not having "Makefile:" in the patch subject
> since this is not touching Makefile at all.
>
> I rather like "clang-tools:" or "scripts/clang-tools:".
>
Okay.

The solution should cover the whole bug, I think this patch
may be dismissed then.
Thank you for your feedback!

Best regards,
Maciej Falkowski

>
>
>
>
>
>>> The patch handles the raise of the KeyboardInterrupt and exits when occ=
urred
>>> with code 130 as documented in: https://tldp.org/LDP/abs/html/exitcodes=
.html
>>>
>>> Signed-off-by: Maciej Falkowski <maciej.falkowski9@gmail.com>
>>> ---
>>>   scripts/clang-tools/run-clang-tools.py | 5 ++++-
>>>   1 file changed, 4 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-too=
ls/run-clang-tools.py
>>> index 38fc311d2e03..eb0e0ecfce24 100755
>>> --- a/scripts/clang-tools/run-clang-tools.py
>>> +++ b/scripts/clang-tools/run-clang-tools.py
>>> @@ -77,4 +77,7 @@ def main():
>>>
>>>
>>>   if __name__ =3D=3D "__main__":
>>> -    main()
>>> +    try:
>>> +        main()
>>> +    except KeyboardInterrupt:
>>> +        sys.exit(130)
>>> --
>>> 2.26.3
>>>
>>
>> --
>> Thanks,
>> ~Nick Desaulniers
>
>
> --
> Best Regards
> Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/53282d70-c217-d65e-2d30-7a5593d6c585%40gmail.com.
