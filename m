Return-Path: <clang-built-linux+bncBDYJPJO25UGBBYHUQOFAMGQE7E6TNWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 3271340B83F
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:39:13 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id m4-20020a05600c3b0400b00303b904380dsf1044733wms.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:39:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631648353; cv=pass;
        d=google.com; s=arc-20160816;
        b=BjQ6M/G+Fp+GX4r/ufLLazReyODiHLPABCARwO2s8JqyjPQqeQqUWE0Qg3LRxxIMW9
         0fIFC8TiN55cRkHiaSuKrGLxuyE/sn6pSpZjKVlfWScb9zYLCdXT4RfHKeiy7J4ASm2K
         9CoRpxx8gOdf0TjYdHHsvYBJEzrqG91Xf4tvqTQ3OML56qb1Of9qWbVlyuqstHUGjj+V
         EvAHJOZu/NSQmpR9CVNGKTQjB85aqHG5jHN/jFFjx2c5Yxol+CE5wvkkdSn2wRJlCsRH
         X/KPrH+Uhv7hz5XNGWI0JC+qiCN/Cvm7o3QPHlu9IYBR7mDwuj1+xNrpfr33nvKAmumt
         4VlA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Rhru6MxhGlZ0YTw5rJOWam9tUWcNqsheETmoBmYzgmc=;
        b=cXtynAo0ZweUur83sU8Cetf9WqCd+Zqpulk3o5v6yjNYPxsOGyXkkHQCoF0YjZiuAZ
         XPMIxrhE+++gcZNMzCPFNP5WJk4jz/u2aeJOiSjVoMB/12v3aowwXm9ViLa8xiZCk9Tb
         hmlfH5PXbbGo8f5y6pd+vDl7wAV+sO2c5vxTQNi6cKv/XG6k4h8RqQxvnwTRb+lV9aAv
         RBJjI5Rm4VEJ8TxkRr3xvQigyQ+8UCWjOq6K9QFtz6YTLCzUC0rIZq9YMYvMJPbpYzu/
         FOlW9MRcyelqL3olVHC1gZaUtsLdzQXTklguiyzuFIfqqypfdN0VOxorGbOoTEbMZ3F+
         MhUQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=E2QZm15x;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rhru6MxhGlZ0YTw5rJOWam9tUWcNqsheETmoBmYzgmc=;
        b=CULrRGzfybkEIMb4u2rPC0dqBhqWpQVe6bctPXyLMVilh4V7hy07CGe2pe3UK+Kasv
         2wl65WSXuee6MZdGRUy2+f2cgNfluvuzwurdv9cDd+G0xkaIpP/YKGFlFbsk+P0A836S
         qsIRwYutldkFIl+QZIGz0i6I28CXnoQ+OZSG/RCrz7jvCVf9TJ0fldtCfcWXfnB0lQQO
         qOSUKKGf7Tc0j1/erF24yurFpGkMcly6/ULV/VhtxtFb6GcNdCu+r5AzW0nD18woHBI9
         9R9rJlb3r4rxbxXSX1YSnHg+3nzTp5uYdKh1aS13fu9OQXBHkTR4+I38FlIfKp6OPAi7
         uPew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Rhru6MxhGlZ0YTw5rJOWam9tUWcNqsheETmoBmYzgmc=;
        b=qm46tmwaJzGt+XQ35W0Ec459NoL2KiE+zdAljL3dxsAR9b8cpFmWObqAdC4kZND3WQ
         NztUD4X/ENwRclyqBacKUjSRhmTIICuD3pVQM4BcezLCCCy8ZGoQiC0XkDcHNq/T8oW8
         0i/aF28fG/EHn4nYqhRwq/FF4oITUGbCIQC4FKux/S3tnoN8SEPv0LI1ZfGitvrKlsTT
         1igiyfSwbscKpZBVOfJY3tJonxqcL//rAOIOg9SnbphHbwC/LbDzK8jXgjPgNPD1vr3j
         7eiuonGyTc2uke+tYrqao9l4gYTc483Z0bR4Z9ZhdLPwRUmQ9SYRcM+4BQGuiKWcXoqN
         ENyg==
X-Gm-Message-State: AOAM532iUHumPVcHJhB193OnuPmNujpWB9+xjKsxNyFIbVdVvb0mF1hh
	YgWPtai26Iv3S0ixx+Dhxu8=
X-Google-Smtp-Source: ABdhPJxlR37zOwfN32Q4pk6HZhcz84ZXLEkwAmfPZC9oddEbYWbV8/VKPJ+idXT9GAkI6ceyy6lTag==
X-Received: by 2002:a7b:c30b:: with SMTP id k11mr697826wmj.49.1631648352966;
        Tue, 14 Sep 2021 12:39:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:f614:: with SMTP id w20ls1415875wmc.2.canary-gmail; Tue,
 14 Sep 2021 12:39:12 -0700 (PDT)
X-Received: by 2002:a1c:cc05:: with SMTP id h5mr806793wmb.5.1631648352093;
        Tue, 14 Sep 2021 12:39:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631648352; cv=none;
        d=google.com; s=arc-20160816;
        b=E2j3I+1cPyqZuGgqhujglKChnm3yFiPwpfZmIZrnt541ZoAEevMxz0/X1wT8lJsm/5
         WCU7SRotRfgsK7BfxBnQyNT9rgZgUq4R71HUK68rDBOsiGql2nwdTdnQqfJwH+LmOqSr
         D+5l+Y5J8hhCLhSFezmTeroo5PeSklMeJapl8azda2oJp5ppXpy5V5CnkQqCxyphncHf
         SVRz70K1KIMcNGUXiogb8Y65qnV9f5BMLCh3fguxzPl3l03QYELlfBqsE14HocPvm6of
         FqcNI0eLi6XZ2js1807gzTWNCuZyte+C8Zln0eJ8t8ZMflE85Pv63C2UQtPijJcVsbB4
         zSeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=aeXwmIgch5WdkpveenJmPeY14PQ1LoSRtKhoZ8R2ZN4=;
        b=xL4JDS0lWyIXWZAiPG9m6L0LNgYnAnXLS/CEB4REgiSjyU6cq2acgY8CVevAwFXe+b
         FO4eH5StkI3dT4oBD574Mgt7tuGzXZKKtjKjYKmg/f0EfRyWSvsaDT8XnRR1zUCOSZpB
         wBLgdf0svxbkt67ndnTZU429PDsa8DyrI92qgdFF1T/S8kfhzI6KB552G8HpKb55sqfI
         OpvG9RNnwqNLqUysNKOYoqJICDIKUn7Yt029gIRvknkQrRunYt7Gnutb/aeFbjLWXIsS
         HhyCmipWWr6uF6l2Uj/l/f53HZzdK/RsOOa/OihMp8w9ZSaLnrli6T6uWxEDcXGTBKBD
         k1vA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=E2QZm15x;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com. [2a00:1450:4864:20::232])
        by gmr-mx.google.com with ESMTPS id 193si198318wme.0.2021.09.14.12.39.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:39:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232 as permitted sender) client-ip=2a00:1450:4864:20::232;
Received: by mail-lj1-x232.google.com with SMTP id y6so781966lje.2
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:39:12 -0700 (PDT)
X-Received: by 2002:a05:651c:1305:: with SMTP id u5mr16539923lja.198.1631648351403;
 Tue, 14 Sep 2021 12:39:11 -0700 (PDT)
MIME-Version: 1.0
References: <20210914191045.2234020-1-samitolvanen@google.com> <20210914191045.2234020-6-samitolvanen@google.com>
In-Reply-To: <20210914191045.2234020-6-samitolvanen@google.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 14 Sep 2021 12:39:00 -0700
Message-ID: <CAKwvOdmx=XTaKfT1-KNz1j8W0E7HDrWNHKdpCCXQUs+ZDPfXvg@mail.gmail.com>
Subject: Re: [PATCH v3 05/16] tracepoint: Exclude tp_stub_func from CFI checking
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Kees Cook <keescook@chromium.org>, 
	Josh Poimboeuf <jpoimboe@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=E2QZm15x;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::232
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

On Tue, Sep 14, 2021 at 12:11 PM Sami Tolvanen <samitolvanen@google.com> wrote:
>
> If allocate_probes fails, func_remove replaces the old function
> with a pointer to tp_stub_func, which is called using a mismatching
> function pointer that's will always trip indirect call checks with
> CONFIG_CFI_CLANG. Use DEFINE_CFI_IMMEDATE_RETURN_STUB to define
> tp_stub_func to allow it to pass CFI checking.
>
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  kernel/tracepoint.c | 5 +----
>  1 file changed, 1 insertion(+), 4 deletions(-)
>
> diff --git a/kernel/tracepoint.c b/kernel/tracepoint.c
> index 64ea283f2f86..58acc7d86c3f 100644
> --- a/kernel/tracepoint.c
> +++ b/kernel/tracepoint.c
> @@ -99,10 +99,7 @@ struct tp_probes {
>  };
>
>  /* Called in removal of a func but failed to allocate a new tp_funcs */
> -static void tp_stub_func(void)
> -{
> -       return;
> -}
> +static DEFINE_CFI_IMMEDIATE_RETURN_STUB(tp_stub_func);
>
>  static inline void *allocate_probes(int count)
>  {
> --
> 2.33.0.309.g3052b89438-goog
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmx%3DXTaKfT1-KNz1j8W0E7HDrWNHKdpCCXQUs%2BZDPfXvg%40mail.gmail.com.
