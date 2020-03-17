Return-Path: <clang-built-linux+bncBCTJ7DM3WQOBB6WBYXZQKGQETPIJFFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23e.google.com (mail-lj1-x23e.google.com [IPv6:2a00:1450:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 837DA189248
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 00:44:59 +0100 (CET)
Received: by mail-lj1-x23e.google.com with SMTP id n3sf4245772ljg.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 16:44:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584488699; cv=pass;
        d=google.com; s=arc-20160816;
        b=jPs9dn0xkts7pUTnGj60i+FLyL7pJx5L+bWanHDEcmEgo6EIRyJbiL96qT02NPxtov
         XqBprnaFRcrT+u2lTz+OUE82+ZZ2prOQAgR2MkCfVd4u1NkArPkWHMoHk9+5jwtJhgjd
         wdDiLxKpnlRCCGzyNFCI/oIGmsrVhpVtRBDb55Z3yIT4X1CFkYC9eL1l+1PIGvwNpIRt
         GtlYCtprB/UCrJAGyrtY4fkJFpMiDbepIjZFv2eoJeUbngOm2nQuzg9i6RfrABq/M7YP
         f9Gg/Uf/yP9sPU18i3LQPIcv1sJ4RlK3TWq8p8iqXmrX6jpkf2t0U7ejxdDD6+OPM6l8
         qZIg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=iojMpvEeKmyoavVhjt3vAXMMPVAU5KkJLxNp89xm1gA=;
        b=nCI7xilnYxeCYZ3pY9KNTgKxeraTnuAm7IO2N8jxU80eiM2Fjf9XynyKml6qlZoWEk
         HPe/dfiJfa2OqDUGlVyU5kTztYnuCYMaGFJnnQsbEY8xp9pW14Yb9PZ15QgHoaaSjucp
         hVk5jwaGfSXLLf/NZKZN6kFh5649UDzpJspgv0KVU1WYB1dnyzd2SQtGT52JyfJ/H7Qe
         sO1r5yNBS1BER3OwdZ8EF150DMSoU8FxbkdfAd++Fq+Ks5Sl7LdQF5f635HF5vIMB+Qz
         KwhPq3fzLlRD7UGzayYQipwxhw6iyoSPod3NAunZcAhaCALNykACN8SQzgOYJW6DBKZb
         9mrA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iojMpvEeKmyoavVhjt3vAXMMPVAU5KkJLxNp89xm1gA=;
        b=IF73XvYkFRD2c3LK7xYK1jdGgxiTijfYo2t4tp2kB5JZu0KcVU/x+KPUG20/+847Io
         73XTF2lTgYGEMkt6KC5oGOr4EyFOpMOTyphe7/tPMb4OcKWfPe3lDnNtJauuy9YH8K8z
         FkJebQdXAngXBrzDusrTESiFoRobEWeRE9fLkEIvIUUEPQ+Tlw0rppxukFYKUGXCPiPp
         T3QaY0P7Jww42KhpBso5IXySEDZ2Ew6caJjIcyI35i7xkJy/NI6rXRbneK9zsW/V66mH
         AQg9HN5uaiekXRQL3Q8pkqU3EEvV41dPcO4q0R5gNlJefzYmfNDehMVs+am/78itRiWC
         3Byg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iojMpvEeKmyoavVhjt3vAXMMPVAU5KkJLxNp89xm1gA=;
        b=NeMFwsm7TU+W/0bxOpdVJq3iCwRkJOoDciYlIcT+YOdyhAIC2nLUdJIApk4FtFPORH
         u6zbDOuVh/mQBhYmKY5O5yb98z+n4AEYCUEBPESbIedigmPl3HwY9vSFKhICuIyhEZBm
         O1IGMgR7p+pO2ljvMYWt13eQioLkg/JwNoh9RmPVtNSSAWwOBjl1LpjiddC8kqq+Lf55
         wBBe5zphvjUD6qJA8F6RSPcqxYLFIW7nDbAoADrH7vPI2uhdW5k72WeDkjYOBEJbd1/C
         hZnEqsunld/jQk30PNpZ5/ERY36iO9Dv/OeQLFUq6kK6qabhvcKpTbG+sGJnDnlqwMzR
         GivA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3BBrv74wPcz1tgGKyx9Hug2KtRDwepeuVMnNGt8/tSqeHgZRyA
	h/YMf9pzO5iii0RGkSSDw2U=
X-Google-Smtp-Source: ADFU+vvrMb+3ti+cXa+uLffLY5D6F00pt2WZQpwnxMJp5afZV2VgUwJkr95udHdd7KeqOKdANyuVCg==
X-Received: by 2002:a2e:89c1:: with SMTP id c1mr610144ljk.215.1584488698806;
        Tue, 17 Mar 2020 16:44:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls3492196ljk.8.gmail; Tue, 17 Mar
 2020 16:44:58 -0700 (PDT)
X-Received: by 2002:a2e:b5ce:: with SMTP id g14mr679403ljn.25.1584488698141;
        Tue, 17 Mar 2020 16:44:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584488698; cv=none;
        d=google.com; s=arc-20160816;
        b=PTuUdQD5RUir2QLUYqSaiy5xKreEP8uI8+MFDUnye+RA0nr3mrvRRAJEiBCb5tI36k
         9Rq+qiJyjLj0lGF4UV87tFghxXuU364ZOz3I+WgNgC8acpw6yv/mQ1GVydYKc3ckp8m2
         cO498I01H3Egi0rN5IqChurxo8HAIZtd1bnb7iC7gTSE1ShJspPwP69cPJr0rQ+uCGFA
         Gix07HelI7Ee+Kyl0xb270t0bmPwtKRlUh4Fj6cDlrnHiDhp584uCOCfUCUM4nTcIEMU
         /0gSwO9K8YnGyv4xVhOTEjDIHwdCLGZxbrYEXX8oQr4agYRbiWg7jk2Jya3dEisD+zbJ
         gI5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=vjrsMBkxxOFAaC6hjtZGvxl44uK2h5qaXSPEBBGMeL0=;
        b=xwN1XEC56obj4p1IqvFeSyDbuUrf8jpu0TdonBD0UbWssw0EvOCTmVsIXqTUs+ESTs
         dJX0QdT9ZGkgPqm1aiLJtyrkqnquX+he4CJqLlO8+QFidrsHQMktcUkVdL+ND1CczzkN
         jbsY6wzeBMU0R0ITpYR87WxVnqWbLQE6SGsvfSHLiB8t28b3W/PHFpw04Hl4buFj2vrT
         Aem4tgxbdGJfGXRLWi+sVkUYMiyNoDh+lZesCym3Y6RuWYoK+G71lng5hak1exkp0DeA
         fIsrPMmNj2g2SU+wYOfh5a2/TX6NiheO3wOV6Oh1ThGi3FxHoGD1z67tVyZVKV9QN5tA
         OK2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) smtp.mailfrom=daniel@iogearbox.net
Received: from www62.your-server.de (www62.your-server.de. [213.133.104.62])
        by gmr-mx.google.com with ESMTPS id m11si248673ljj.2.2020.03.17.16.44.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 16:44:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel@iogearbox.net designates 213.133.104.62 as permitted sender) client-ip=213.133.104.62;
Received: from sslproxy06.your-server.de ([78.46.172.3])
	by www62.your-server.de with esmtpsa (TLSv1.2:DHE-RSA-AES256-GCM-SHA384:256)
	(Exim 4.89_1)
	(envelope-from <daniel@iogearbox.net>)
	id 1jELtD-00028U-Lt; Wed, 18 Mar 2020 00:44:51 +0100
Received: from [85.7.42.192] (helo=pc-9.home)
	by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <daniel@iogearbox.net>)
	id 1jELtD-000KY2-8K; Wed, 18 Mar 2020 00:44:51 +0100
Subject: Re: [PATCH bpf-next v5] bpf: Support llvm-objcopy and llvm-objdump
 for vmlinux BTF
To: Nick Desaulniers <ndesaulniers@google.com>,
 Stanislav Fomichev <sdf@google.com>
Cc: Fangrui Song <maskray@google.com>, Stanislav Fomichev <sdf@fomichev.me>,
 bpf <bpf@vger.kernel.org>, Networking <netdev@vger.kernel.org>,
 Andrii Nakryiko <andrii.nakryiko@gmail.com>,
 Nathan Chancellor <natechancellor@gmail.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "David S. Miller" <davem@davemloft.net>, Alexei Starovoitov
 <ast@kernel.org>, Kees Cook <keescook@chromium.org>
References: <20200317211649.o4fzaxrzy6qxvz4f@google.com>
 <20200317215100.GC2459609@mini-arch.hsd1.ca.comcast.net>
 <20200317220136.srrt6rpxdjhptu23@google.com>
 <CAKwvOd=gaX1CBTirziwK8MxQuERTqH65xMBHNzRXHR4uOTY4bw@mail.gmail.com>
 <CAKH8qBteBDQp_Jw2RhM5u6x2q75+PtRwX6jZZQggjpeohWQEzg@mail.gmail.com>
 <CAKwvOdkVtDjXNM1pA=sZvrGhxK3amYbLmsQvQWKnTtXyvxaR3w@mail.gmail.com>
From: Daniel Borkmann <daniel@iogearbox.net>
Message-ID: <112e0e48-7dd6-d209-bd17-65c30d30a984@iogearbox.net>
Date: Wed, 18 Mar 2020 00:44:50 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.2
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkVtDjXNM1pA=sZvrGhxK3amYbLmsQvQWKnTtXyvxaR3w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Authenticated-Sender: daniel@iogearbox.net
X-Virus-Scanned: Clear (ClamAV 0.102.2/25754/Tue Mar 17 14:09:15 2020)
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

On 3/18/20 12:14 AM, Nick Desaulniers wrote:
> On Tue, Mar 17, 2020 at 3:13 PM Stanislav Fomichev <sdf@google.com> wrote:
>> On Tue, Mar 17, 2020 at 3:08 PM Nick Desaulniers
>> <ndesaulniers@google.com> wrote:
>>> On Tue, Mar 17, 2020 at 3:01 PM Fangrui Song <maskray@google.com> wrote:
>>>> On 2020-03-17, Stanislav Fomichev wrote:
>>>>> Please keep small changelog here, for example:
>>>>>
>>>>> v5:
>>>>> * rebased on top of bpfnext
>>>>
>>>> Thanks for the tip. Add them at the bottom?
>>>
>>> "Below the fold" see this patch I just sent out:
>>> https://lore.kernel.org/lkml/20200317215515.226917-1-ndesaulniers@google.com/T/#u
>>> grep "Changes"
>>>
>>> $ git format-patch -v2 HEAD~
>>> $ vim 0001-...patch
>>> <manually add changelog "below the fold">
>> BPF subtree prefers the changelog in the commit body, not the comments
>> (iow, before ---).
>> Add them at the end of you message, see, for example:
>> https://lore.kernel.org/bpf/a428fb88-9b53-27dd-a195-497755944921@iogearbox.net/T/
> 
> Sigh, every maintainer is a special snowflake.  In our tree, you're
> only allowed to commit on Thursdays under a blood moon. /s
> 
> But thanks for the note.

For every commit into bpf/bpf-next we automatically put a 'Link:' tag pointing
to the lore.kernel.org/bpf long-term archive, so there is always an easy way to
retrieve additional information or discussions ([0] as one example). So whether
you put it above or below the '---' line I personally don't mind either way. All
crucial information that helps a reader later on to understand /why/ we ended up
exactly with the current change should be part of the main commit log though.

  [0] https://git.kernel.org/pub/scm/linux/kernel/git/bpf/bpf-next.git/commit/?id=483d7a30f538e2f8addd32aa9a3d2e94ae55fa65

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/112e0e48-7dd6-d209-bd17-65c30d30a984%40iogearbox.net.
