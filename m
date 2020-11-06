Return-Path: <clang-built-linux+bncBDYJPJO25UGBBD5XS36QKGQEODDIKYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CCBA2A9CBB
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Nov 2020 19:53:04 +0100 (CET)
Received: by mail-vk1-xa40.google.com with SMTP id s1sf471967vks.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 10:53:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604688783; cv=pass;
        d=google.com; s=arc-20160816;
        b=jS0zLTM8oEClVtpunwXKT8IMIWRc9eFDpTw01KswcIgrrBwBkPsAohBFOb+yMtfYWG
         kpXJuvnogNTrd2NRRtqsPSeARF4PxVHkxkTt7qCSmMLhBmEZJxDJcEtGjGAUsri5uY+w
         fZ/MKWkuFJlahHvlFNVHl5Bkxa9dGFmHAktFveSWN2o6uAUAd4rJZflWSDy4IMaRVxIL
         iHKis5KbVUHlhL36o/AS2u3+mEUumrRqO6QJm35nBqLluSi2S4SV/b+8EZV5emmYcSJ7
         XUJhzBv9EunPgJmIJbCQmTjZ02LjW6U5gaYe5bV23mfiVLPY3jt/iYcmT1itRIRj/1uM
         UptQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=loAkKLvKrY9ZoWhFytq46U6s9xUEQv5lsqkHfnbotAg=;
        b=080LycRFz2Ow2BVM6Lw1hZilvWV/x3IUjh2xNWvIqjIQ13xrmKS3cvkwUzMy0ApTNM
         OYlz7QvLWldJ8ffeqZGDr2s/mo4EFvoRigbbHtqjxCD6xadzk0Yoz9Ue5S8bqZXWKNnh
         0tMHd+H4DEiPqGqvADOb04OeFr2Cl1xfCUu+Jm0sfYEZtYuvKzEVD8w4gmHz97I5mC+x
         CXJRxlNHUg66wToRAFeX2j2cXOWIG1a/HlCXZFehVMH8OC5G5O52uNV5RBZ4bhDS8xDg
         TcBXLskN9ejWjoMk1ikSHxD4zeo7qjLTInKTjTWCOUkjX2y+7KccMpToXrk8w2a9QYuj
         8LDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rNwN/rqW";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=loAkKLvKrY9ZoWhFytq46U6s9xUEQv5lsqkHfnbotAg=;
        b=qJ8+ORkWFEgV0tfZEgHJikBGVeiAriaite7IHrH37wO3miYkIu0wSmYA7h1CN3qZ83
         yzSU2XYnRIlj4NTaENCB0muRBDYbkPStaIYQqTbD5UeWUHfExfLAj07h1XDM4zrI01U2
         PhQ53OKbweYS3DQpbGn9jpDOsMOT25me2Xfallh3SJpe5z9WK1AqIIerD3Cf5wXwsjMk
         K0NCCnPL+auPeh/akIvfoAKOGEo8ibe7rOdrT3iumIxo/Cy5aeag/bcqrL16/b2bIjsZ
         H+vuIBJW5L9c9LQmaLauoNDKkWtJAGMak5MoDMjbpeZdYqo4zoHp4anL73GyGX7Ru1Hm
         iZ0g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=loAkKLvKrY9ZoWhFytq46U6s9xUEQv5lsqkHfnbotAg=;
        b=eJgOhc56Db7HLQbtqGUc3gusVQpsvhXKdJeNi1Eqj5zTFlxyDwEWs1Px95TKL/sbly
         tsjE7lSAceWg8Py6eXPxVkvkQRp1XrTgJgssYZhnA4xWEyfTC+3qbCeot52YHEsQlHUe
         ux45vW44wFUKGyzycbTXt5RdusRo6pu1fwNymE3nhJHldcx0rzD+BW33Ui2vJXVjEniW
         yPHLMUkezklWxI8EyrWlxnDkOiaMK79iLxdcVE6LzZcU4FrKD39dxPuDMo7x82+X9+4w
         E5qR2XmOZyaTTGBnTigvKLWlMXVIn6F+55JWqmo7DfPGLxLmmkdGR/20lIW5PVoVGAKA
         uiFA==
X-Gm-Message-State: AOAM531KPMNoJPwMcUVTrO34MtYhaolO9q4G4JI2u5LTc5wLGZ6pgeB6
	6MDuCSgKFSUMKo/HQ1maQiE=
X-Google-Smtp-Source: ABdhPJzL6K6hqG7QJAqipuqF9aDUxHOaSVp/U3c3CpaS23dkXAimfi5eiCMFts8GeYwsMjyd2SwSNA==
X-Received: by 2002:a05:6102:3203:: with SMTP id r3mr2232094vsf.21.1604688783410;
        Fri, 06 Nov 2020 10:53:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fe4a:: with SMTP id m10ls286255vsr.8.gmail; Fri, 06 Nov
 2020 10:53:03 -0800 (PST)
X-Received: by 2002:a05:6102:309a:: with SMTP id l26mr2233951vsb.4.1604688782984;
        Fri, 06 Nov 2020 10:53:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604688782; cv=none;
        d=google.com; s=arc-20160816;
        b=O5mPRXDTOPl5DQC6Pm5Mwmp5PUkma8Bw1CthO5Q3J6GWwjYZELiBJ8jGb5kvLEqDW7
         dvVnYRoh9dGGjAJJXtEgZhV3wKZoymbx1jLd36i41cqBiq2ZzPC2HT+MWCI3IiEmUoFg
         cuCxqxLg74dcVip3CQ6f7cziln+dVbQlCWO1QJccz4ovoqPuec/54Z/4PClAXYrKe44n
         caBH5FtteWMu0lIcYp/qKjN9f7YNMgYtsRX6FyzjFadK4EFO2nq/u3qGFX4YhrLAzy3O
         +WgJBLIUJx0U0PFJ7QaC0H6Mm2Whnmrloqj0+NBxxVl5yK2i8XVdwllASkqYRpydJ7qW
         Sx9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=mRJJey7O8hp51w9PTtLKZJy616pOmHfVs3BwFqC0oO0=;
        b=c7QZzwQKaAoINZSfQmaWIIKk4neULIYrokwu7nDrmUMX1z5k7bEg0ohgIknZZdAjt3
         xWRBOBZuO2mk4HDPvsurbfYqWJSnkLZopz3wrg13rp289ExMRTdscjafkvBQuqUzGci9
         rJ+ZtsdVsjQvavKuuwYnYk6/jBw6/7MbW3MdpfKz9QUui4fHfk+q6h7nFoFCj+Chq7xN
         BydJI/FyMy0EAQ2WhwCjaVY1Iiqjjaa13qYdbb78ii5hijc2v3JI8BrHZqcQyFMSCXe4
         8qxzmlDhngz8upnrCz1uvdWH1AFed5bHF3+hfu9phlermL5U6J1HFGK/i+HuMX8EJRD6
         /6pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="rNwN/rqW";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x629.google.com (mail-pl1-x629.google.com. [2607:f8b0:4864:20::629])
        by gmr-mx.google.com with ESMTPS id j77si126552vkj.1.2020.11.06.10.53.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 10:53:02 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629 as permitted sender) client-ip=2607:f8b0:4864:20::629;
Received: by mail-pl1-x629.google.com with SMTP id x15so251971pll.2
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 10:53:02 -0800 (PST)
X-Received: by 2002:a17:902:328:b029:d7:cc2d:1ee7 with SMTP id
 37-20020a1709020328b02900d7cc2d1ee7mr6576pld.10.1604688781870; Fri, 06 Nov
 2020 10:53:01 -0800 (PST)
MIME-Version: 1.0
References: <20201104191052.390657-1-ndesaulniers@google.com> <CAADnVQL_mP7HNz1n+=S7Tjk8f7efm3_w5+VQVptD2y7Wts_Mig@mail.gmail.com>
In-Reply-To: <CAADnVQL_mP7HNz1n+=S7Tjk8f7efm3_w5+VQVptD2y7Wts_Mig@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 6 Nov 2020 10:52:50 -0800
Message-ID: <CAKwvOdk8DdKEuSYW2j0LUeNVoFa=ShXPKBTvpUHakG-U9kbAsw@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
To: Alexei Starovoitov <alexei.starovoitov@gmail.com>, Andrew Morton <akpm@linux-foundation.org>
Cc: stable <stable@vger.kernel.org>, Chen Yu <yu.chen.surf@gmail.com>, 
	Jarkko Sakkinen <jarkko@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Randy Dunlap <rdunlap@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Ingo Molnar <mingo@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, Network Development <netdev@vger.kernel.org>, 
	bpf <bpf@vger.kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="rNwN/rqW";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::629
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

On Thu, Nov 5, 2020 at 8:16 PM Alexei Starovoitov
<alexei.starovoitov@gmail.com> wrote:
>
> I can take it through the bpf tree if no one objects.

Doesn't matter to me. You'll need to coordinate with Andrew though,
since I got the email that this was picked up into -mm:

>> This patch should soon appear at
>>     https://ozlabs.org/~akpm/mmots/broken-out/compiler-clang-remove-version-check-for-bpf-tracing.patch
>> and later at
>>     https://ozlabs.org/~akpm/mmotm/broken-out/compiler-clang-remove-version-check-for-bpf-tracing.patch
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk8DdKEuSYW2j0LUeNVoFa%3DShXPKBTvpUHakG-U9kbAsw%40mail.gmail.com.
