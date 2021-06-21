Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBMP4YGDAMGQEWURIG5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CD2D3AE86F
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 13:55:30 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id b42-20020a05651c0b2ab029016b628e5f99sf1336504ljr.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 04:55:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624276530; cv=pass;
        d=google.com; s=arc-20160816;
        b=g2Y8fColF+81238T/ibF6JT3CijWz9u4DcTPqNgd+SLG3APrjZECUJ3MbtutrbOsEf
         VRMLIZ4utPF884i9hXmo0kf//fI2qhZ0jOwoGIe9RijUMPoutkiRwYKqbIZ4kBJTav/E
         BUkQ3DH8HJgLjIJJMe5fm7USbr/QDYwNy9qs8pq3FXvzNCtv8XQgJ2T2znCqv3ha6toi
         5DmuZO3zRAQbLR5RuIl0BBIskwpGH4FsfywT56JoTx6rT1R4lVfHHi56SGq/UcFLGkWN
         v6U8S4qHwSPO8ZJ7cqNtRdbdZKlvt6sx2tTPo0NufVQxqSubF+vgtSKYtx9nfwqyvnXd
         xnEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Knjjgz5ZE7w66vITofbjCcZTS2Rw2+ZPu5GzhGhkc6s=;
        b=lI2NCk3Uuss47rt9Oz0tz74N1mw/Z05Iq8yHAicalP3PucF+HoQ8Z/KcXKghvbVNLb
         52TZvnCONq9KCLAMW/yTv0f1rRnPxNEv1l7TmIme853jCiRZNKRTTWltqGGIE6jeaNcE
         C3Blw57CGgaqnI1awLhlCzHGoYLlO+0lFT+Vdyyb2Nfd/xePyUJfPuavhpgO+gvqURsV
         XuKUeYh7e/qkX79tmT/o7CuDXBYJX+9Yy8GAkwh2qEuc0NlAykqwgKkZULpXTbT1vYge
         72dA3QBq/jUvQslUvjVLgQhTYiIO3FrbpXsR4ubqhu4nkkRj34SFVxVho9NdF7fnilY2
         utcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Knjjgz5ZE7w66vITofbjCcZTS2Rw2+ZPu5GzhGhkc6s=;
        b=d54AitiEot4goQ1jGlKn0qUKy9BM7r4+QXGMGVvWcvpHSYwFsLdDzjjekcqbv/1g0F
         LlgAiTFrFni7a5ijF+HVY8biDz4V9c9tAhBJP6he/XarEK8zbkr9sr86ax7PuKMpLnsY
         gr1yZi1tWl+MAZWgNqWFN8zTrZrXvJYF17OmZRyE+WUl0ncQROXRPsJWHwcl2tv8dADj
         VVlimq9IE9Ek4THEX3XABbj6W2vXQDSTdHnN4hBARk7P+b6HU7tj2gnyf/WLzDONXZbX
         U9uUE3J9YiFk6oJNlOtS8N7C4cbMDE5qHFN/r9KOo/NQWisjTqw76d5DAKPqiO1+oPKx
         3MUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Knjjgz5ZE7w66vITofbjCcZTS2Rw2+ZPu5GzhGhkc6s=;
        b=pnmtPaVQKkQQI4j8aIBk8J4MWAQD9KlewQicIO/Mgby5Uk22fbqoQCOaAHLE+gJmBx
         bO8xrAGb9nyKJmMq1S5SnJEN+teYtnuBOeJ2kpd3Vzyc+zChg/QBItlWkSuOgGogJnat
         NShAfhxRI71a8sIBnW8I2qZXDBQtp6IMUmyDNBuEVhGtKXjeeeoNK/pe69CawRfDVtk8
         8eOZrWFs5YcoNzKQIGGBNHEv3+Id81+1lid6gOmoe9Q8I9nZH1ALRttPd519tF3r7ejy
         cjhVhJ94G48sBCwRrw/lFsKkx5AZGwZibWOe4GhEqJket10pgY4KFrdcySAr12bcGjaZ
         w2fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SzRJUVbkhCy85suibd0PWu1xxLTfi9BTIqjCvtOukS1mKk2di
	QAXL2eYY2mCCLyejf1ACjxg=
X-Google-Smtp-Source: ABdhPJzxey790nSJK4F19kTYzTWmxBrtDvpDt0V5PtM9Qm9EOhF8BUO/Lf8Ce/JbJJVKSnLiGg4Uyw==
X-Received: by 2002:a19:4355:: with SMTP id m21mr5521014lfj.618.1624276530012;
        Mon, 21 Jun 2021 04:55:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:f515:: with SMTP id j21ls175358lfb.1.gmail; Mon, 21 Jun
 2021 04:55:29 -0700 (PDT)
X-Received: by 2002:ac2:4943:: with SMTP id o3mr3786851lfi.274.1624276529013;
        Mon, 21 Jun 2021 04:55:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624276529; cv=none;
        d=google.com; s=arc-20160816;
        b=PmGzPUXmMK+CxkFB7caF9tmtS21Z7PXQyE+knOhZbc7nYrI4rjj9IsYVVdS3FjkUrU
         c35lg0rXa3I7spsNEJc4zpac30H7XktME8EfyccTrvIVVVAOdXirX8TzDuZRcNeuszGB
         nTc1PukwS3pd+GAedsQXux7Mht5qZJmd6fbXIl24hDOXZVbAP5MH9K+m72cncNH+saLU
         NP8J5+vPi8kGJvfR4jArABsUXmdc19Qij6fxaP3m3fdG4RxYEop7WxcaHERAQ8A5TcNR
         ygwDQMOQff4k49TmoOGlmHhgbQ3thi57ShP+1Cz6YEGangFKtCNMj231nchsCK0hPhXE
         5cYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=+Jis+uKW0ybLBNM+xkbKO/vcEH9p86k5XrgOwkjbpfo=;
        b=D8utuubDpHxrgYKYRlZwEbDwFMGxDTV2j8MlegRwIEHf3Vlgkh6vgSKw5E4wyr5+En
         ogQbBO5NKsm9sr46sRu8otutnUlTk2fEPX5ywVml3b4Wk8IRQm3IV2znb6HUF3gEkypm
         miZQA1fiw8EoH8ASwQotbwvtttsiiWfJ87H6nsVvVuJ44gSh3AZ+qhPagSMkMaNDMsLM
         xt9gpHPH7zv3/kV3efdMLJZgSThf7Mgb1yhSqb6g9OvUQ/Th39Ix7a4s51P/d34c1g/A
         yha6+u1JQxQoyQa0AHHLQztluIShLSfnHyQ9iXKr2ASgrpl1diM8Da6eTyOqd2URLg1K
         Bzfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.74])
        by gmr-mx.google.com with ESMTPS id r11si371697ljm.3.2021.06.21.04.55.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 04:55:28 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.74 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.74;
Received: from mail-wm1-f42.google.com ([209.85.128.42]) by
 mrelayeu.kundenserver.de (mreue106 [213.165.67.113]) with ESMTPSA (Nemesis)
 id 1MeTD8-1lNKke0avc-00aYTQ for <clang-built-linux@googlegroups.com>; Mon, 21
 Jun 2021 13:55:28 +0200
Received: by mail-wm1-f42.google.com with SMTP id m41-20020a05600c3b29b02901dcd3733f24so3192487wms.1
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 04:55:28 -0700 (PDT)
X-Received: by 2002:a1c:c90f:: with SMTP id f15mr26864111wmb.142.1624276527837;
 Mon, 21 Jun 2021 04:55:27 -0700 (PDT)
MIME-Version: 1.0
References: <202104031853.vDT0Qjqj-lkp@intel.com> <1624232938.d90brlmh3p.astroid@bobo.none>
 <e6167885-30e5-d149-bcde-3e9ad9f5d381@kernel.org> <87im273604.fsf@mpe.ellerman.id.au>
In-Reply-To: <87im273604.fsf@mpe.ellerman.id.au>
From: Arnd Bergmann <arnd@arndb.de>
Date: Mon, 21 Jun 2021 13:53:10 +0200
X-Gmail-Original-Message-ID: <CAK8P3a37Pj24WqSvMKnwSS74W+WMAsmk+-kXX5qE7fCZ=QBL0g@mail.gmail.com>
Message-ID: <CAK8P3a37Pj24WqSvMKnwSS74W+WMAsmk+-kXX5qE7fCZ=QBL0g@mail.gmail.com>
Subject: Re: arch/powerpc/kvm/book3s_hv_nested.c:264:6: error: stack frame
 size of 2304 bytes in function 'kvmhv_enter_nested_guest'
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Nathan Chancellor <nathan@kernel.org>, Nicholas Piggin <npiggin@gmail.com>, 
	kernel test robot <lkp@intel.com>, Andrew Morton <akpm@linux-foundation.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild-all@lists.01.org, 
	Kees Cook <keescook@chromium.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Memory Management List <linux-mm@kvack.org>, linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, 
	kvm-ppc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:/HIWbcnFDyb+34qxqj/tPpWaaw7K4m3SyMPuM5njUI9FvQJHatX
 6TvXRpiNxZao0k7WI2nUvc+Eybwm4bMqhrknOQYxjFQl5LY6n8JTfRIex6z0WC7NOTZmctU
 t6d7cVWp94X5daTv8iyTnY441rlg1THDar7LoQCmsPss+sxyiWWRYqm3Q3LO8HkUgVlYYqT
 UlmmDqkAAM4IbTdM4QMmg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:DgN1RBw87HE=:bBjpuIxikzhqktoAX8CAsO
 j9M00yr+8VKYoZWPCi0d0j1oIgbrMsLwOoAZkQnovXqunbbkDIVGAAFeosZuMVYgeO7svxtdK
 BiuWnEko0/07AeL7E5abtNsQIRYS8P8Nfu6cGE1cqZy7+fcbfGHyT7YnmIMkj13+DXd3KFRTf
 TNzImUB4Cncoj6qFoV59rOpiZG9wxyLpm3eRIKFPOmBS+ZE9yPAVSLkyMauzCvZMWZQ6avSlE
 cP7KyciL1g3vpY9yNYzgkA6p7WAFGud/wuNSn50L4fLdbQMSlfTGtAI0QFqNZe1xW2/6OMNvN
 DD5INBurWoYfokcODeA0GkdyyHP2oAimqBatSV7+naF7Fzd5eb9QUfYUs8Se64daqSylgT/2Q
 AZ+4wBQjnNwx1/+v3JkNzXgnr0bAlZY3YBbbQET6AB/6opy6SLXw5/LauEzcAkD749BKeEz9h
 HEYb19pFw0L2OIRmUaRmclfiuHekVMCifB0uagxog5Idj9A8B+XGDAyoIv0XRlgjkP/CV8k5A
 EAtI6OWTm/txXI3/DFMZ+vNRODnOSfORwS5rISpro/7Ytq+TLdlL0X+LXq9PcehChIRdacc9c
 t5CCgdC45LYg6kyRXIzDFb6ErOlYXNUUwxPWr4e82+iPboA7G5/bYxC4JlQjJjy8Lq//pYoHk
 5zdQ=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.74 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Mon, Jun 21, 2021 at 11:46 AM Michael Ellerman <mpe@ellerman.id.au> wrote:
> Nathan Chancellor <nathan@kernel.org> writes:
> > On 6/20/2021 4:59 PM, Nicholas Piggin wrote:
> >> Excerpts from kernel test robot's message of April 3, 2021 8:47 pm:
> >>>
> >>> vim +/kvmhv_enter_nested_guest +264 arch/powerpc/kvm/book3s_hv_nested.c
> >>
> >> Not much changed here recently. It's not that big a concern because it's
> >> only called in the KVM ioctl path, not in any deep IO paths or anything,
> >> and doesn't recurse. Might be a bit of inlining or stack spilling put it
> >> over the edge.
> >
> > It appears to be the fact that LLVM's PowerPC backend does not emit
> > efficient byteswap assembly:
> >
> > https://github.com/ClangBuiltLinux/linux/issues/1292
> >
> > https://bugs.llvm.org/show_bug.cgi?id=49610
> >
> >> powerpc does make it an error though, would be good to avoid that so the
> >> robot doesn't keep tripping over.
> >
> > Marking byteswap_pt_regs as 'noinline_for_stack' drastically reduces the
> > stack usage. If that is an acceptable solution, I can send it along
> > tomorrow.
>
> Yeah that should be OK.

That's fine with me as well.

> Can you post the before/after disassembly when
> you post the patch?
>
> It should just be two extra function calls, which shouldn't be enough
> overhead to be measurable.

The thing I remember is that the 'before' code here is some seriously bad
output from llvm, and it would be helpful to have someone get the compiler
to emit the correct powerpc byteswap instructions and avoid the excessive
stack spilling.

The warning here is just a symptom of a missed optimization and the
same thing probably happens elsewhere on powerpc, even if it doesn't
exceed the stack warning limit.

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a37Pj24WqSvMKnwSS74W%2BWMAsmk%2B-kXX5qE7fCZ%3DQBL0g%40mail.gmail.com.
