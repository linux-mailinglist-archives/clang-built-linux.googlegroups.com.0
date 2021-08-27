Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBMXUUOEQMGQEAYVV22I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 248353F9B0B
	for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 16:44:04 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id o32-20020a4a95a3000000b0029018f4f7c3sf2897700ooi.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 27 Aug 2021 07:44:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630075442; cv=pass;
        d=google.com; s=arc-20160816;
        b=v0EnbtyLW0mHMm039loSxz3EnUJ1/ANP4suzPdfXh6XHjaDbMiiP4px59xJHD+zJCF
         jMB3Z2BwReH2PbGO6NGTtIlidIjOSLKuJDJqRjqGjCI1DsIY0MO0mFO1pBfEVNauICke
         egnqLxfUWW9q71cnVTmNfeey8KjFFxUHG2lqinqBu5AYE4cSc9z1niwqUHgbOIcZEBxo
         VVXJFEqOK8sStWTgN6Pnfo5Fn1wjx+TPlWXncTVlFEgUsSvPJyWtANzZuiddz6cZRqNd
         PJQQspiKiywS1RNEFsktHDYJUCRmhusG5xIkkSHIhfU0IIsV5wLZzy7fwmEwxdZA9tD9
         bPkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=pHJyMzkbfC5EJdctsM8ejXgf8iLBpLx2dBCXKjO634g=;
        b=fUlul0GZu/okH4ocg6qq0a83Ye01IkkIIU/RdGC42uxMekbiViW61AshM3QveHFz12
         VQJJ54NOrSfh+RlOJ1CxFWb3VQ6Gabx3Swv5ysb/xfp7UUr7W0G/o6P7M9OOsr8WwGiw
         s/W9xJ6qhwZt9u+Aa0fSu93EkvK9N/qfox3GDop+j+hILBlrMW+vAqDG4croqZmnsK0J
         rHO1lEzyxegl9uPvOVuV6ux0sCGO3Pci1w22ra4DuvJn2bGpjkKAyJ3vyQUJc9YLkdTZ
         ljL+KPUdQ8Xp6tcGUuMhhRaXZiGPGH8P/9XIa7lSQ59EBTrfp7Z1sZ9afFeH66Bvq2D+
         kzAQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TViS4QsX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:user-agent:in-reply-to:references
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pHJyMzkbfC5EJdctsM8ejXgf8iLBpLx2dBCXKjO634g=;
        b=DUPYmbnYtP+Qt7oCDtreDsvY/7mgRpEORYL0P8Jmr87Nlw+hFl+tV+WVJjWZ/8YK/G
         8c3FSxLcbwDZkEnJi3RUWgns4V/v/k3VbjsHPgt0nZPmr43cs8GaGkpSO8ypLst/1bXs
         EiHQpU3AJ940r6+CHXnrvGgN3WEn/4GNbcdHi2SZ5j0l4negaJeH0iWqnVZjCtfkj/cz
         PyieWUdDYz8/ijUlBMKhui/D1Q+PeS6wt9QacXbuQVIQzw9lMC0woBTsUvlMW1LxouFP
         VNpJc78o2RfQvWUF7JH4wDByRzeHwj4wnyr+SHtVv7qEP55ChoPFfU1qTnET8IywULdv
         NOIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:user-agent
         :in-reply-to:references:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pHJyMzkbfC5EJdctsM8ejXgf8iLBpLx2dBCXKjO634g=;
        b=UtZGPTIXRC4CmZ1wwKg3L7i+hNfcawtE71EVx9pFMyta5VEpyVW/p8kS6351xmr1+l
         gaWkgrGPkANOpublPjBBxzWHF32KTRyvq6nogAPgu58xWm93tDbsMAPlhIAbjWc8B8+4
         8fjVXYd/shH/XALVKcEgtMzSiQewr7tCSSJYbhjuP3BDUz39BktUxw+yJqmZK9r6Mcop
         D/HSy31uwXD6pkiSOzZaQ7VeXNErKdljpVD5noljTYFsz/Jq9gsR1NTX3HNwG/MrvNln
         AthGuWh/dwWbwc/6b6Hl1C3SYYSY96yvqgn/Ef4v5i9gFn/VQfW0DzMyxYl/QU1pxhOA
         YVAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331ybbhxCf+4Iev7PHiAXW/aQzO35Na3msR9lXxyRD+Bm/R5auc
	/+wFOEdRSHgi7fVDfAqckso=
X-Google-Smtp-Source: ABdhPJzXAKbX03H1V+828DpLEhonoFKex0bt61RL0sp/igOTP8F7NRkO/ZLyYZdipLqwZm/1d/Wsew==
X-Received: by 2002:a05:6808:1d3:: with SMTP id x19mr6524962oic.137.1630075442714;
        Fri, 27 Aug 2021 07:44:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:14d1:: with SMTP id f17ls2322437oiw.4.gmail; Fri,
 27 Aug 2021 07:44:02 -0700 (PDT)
X-Received: by 2002:aca:3989:: with SMTP id g131mr6732186oia.169.1630075442365;
        Fri, 27 Aug 2021 07:44:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630075442; cv=none;
        d=google.com; s=arc-20160816;
        b=lfst17MR3pFwPyA41mVA+dvE7I/CkdSwMj21TSIxR+PbfA4A2VnmnypPgwgOn8dHuS
         Jb1lLbWyTD5UrGBPl64gIfBzMZ+r+5mOvhR3Qdt62qQ54kR6GdqVW/ByKPzkkOi0OQiS
         ujbiJWJiWMGIha8JmL3a+vI4oD5UWYWqwJNfz0xN2x23REiPmNtYm6ZzYS7Mg5n8V7YT
         4q70yjnDt2Ab2rnYDW9PRlmAw+UN1frX8OxNaCRFmfqPFjgpJym97rfsUwcDa8DdWY7o
         0QPJJPGXpMCRy8QiGlrxpwqSuwogFrzlQ6ym+DsdsTbonnrnOu+DXd30bTsXc0YyJEw5
         UR/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:references
         :in-reply-to:user-agent:subject:cc:to:from:date:dkim-signature;
        bh=pNxjvikqqpTXim9A04VMzeyfojtqvohIDnZ/wSMISgI=;
        b=k+s7AFwp2RvHCvRUOTg98S8NuDVw+X8wzbs+Pc5DJ8Rs8TKU5Cl66yDPhsrOUaoNko
         6bw5azvEfUoXcukcAginzM00GYMP+mUDDZKJJQnwT7cZ06ce6QAZBpNXkBnFnkHHv70S
         gZT3jHNARKb1KpWA0kN2C4vDtDqxpti05CGM53tap46B48NWFfiFmTFiu+vTLr+yRpyY
         rUiYbL2wgqLU2b6ZkdE8EWu1epHJf9BXbJzyNooEYBqVnyS18f5IlItjCwCz3KqLChS+
         AjX2IObVC3RBO2kg02ZZY5DeaDvhnFdUNZvmPISAsRmb8QbNy1sx/9NWo64Uj26gom3d
         QLIA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=TViS4QsX;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id p6si411697oto.0.2021.08.27.07.44.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 07:44:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id w7so4994865pgk.13
        for <clang-built-linux@googlegroups.com>; Fri, 27 Aug 2021 07:44:02 -0700 (PDT)
X-Received: by 2002:a05:6a00:8c1:b0:3f2:80bb:f96b with SMTP id s1-20020a056a0008c100b003f280bbf96bmr4433560pfu.45.1630075441624;
        Fri, 27 Aug 2021 07:44:01 -0700 (PDT)
Received: from [127.0.0.1] (068-113-035-115.res.spectrum.com. [68.113.35.115])
        by smtp.gmail.com with ESMTPSA id j16sm7047174pfi.165.2021.08.27.07.44.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 27 Aug 2021 07:44:01 -0700 (PDT)
Date: Fri, 27 Aug 2021 07:43:55 -0700
From: Kees Cook <keescook@chromium.org>
To: CKI Project <cki-project@redhat.com>, skt-results-master@redhat.com,
 clang-built-linux@googlegroups.com
CC: Memory Management <mm-qe@redhat.com>, Jan Stancek <jstancek@redhat.com>,
 Filip Suba <fsuba@redhat.com>, Jiri Dluhos <jdluhos@redhat.com>,
 Fendy Tjahjadi <ftjahjad@redhat.com>, Milos Malik <mmalik@redhat.com>,
 Ondrej Mosnacek <omosnace@redhat.com>, Yi Zhang <yizhan@redhat.com>,
 Jinghua Wu <jinwu@redhat.com>, Jianwen Ji <jiji@redhat.com>,
 Hangbin Liu <haliu@redhat.com>, Li Wang <liwang@redhat.com>
Subject: =?UTF-8?Q?Re=3A_=E2=9D=8C_FAIL=3A_Test_report_for_kernel_5=2E14=2E0?= =?UTF-8?Q?-rc7_=28mainline=2Ekernel=2Eorg-clang=2C_fe67f4dd=29?=
User-Agent: K-9 Mail for Android
In-Reply-To: <cki.1BFC96371E.L9SGD4WTN7@redhat.com>
References: <cki.1BFC96371E.L9SGD4WTN7@redhat.com>
Message-ID: <E0BFA0B2-BB53-4AD0-B1FC-BE13AC3E4242@chromium.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=TViS4QsX;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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



On August 26, 2021 7:06:23 AM PDT, CKI Project <cki-project@redhat.com> wrote:
> [...]
>We built the following selftests:
>
>  x86_64:
>      net: OK
>      bpf: fail
>      install and packaging: OK

Are you able to add seccomp and lkdtm self-tests too?

Thanks!

-Kees

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/E0BFA0B2-BB53-4AD0-B1FC-BE13AC3E4242%40chromium.org.
