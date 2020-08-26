Return-Path: <clang-built-linux+bncBDYJPJO25UGBBK4JTP5AKGQEORSEO4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C45D253912
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 22:23:09 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id lx6sf1958871pjb.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 26 Aug 2020 13:23:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598473387; cv=pass;
        d=google.com; s=arc-20160816;
        b=lbQu/hXuaSqAaJP9L3KX2h877O0dVoXWiThk0xLBVIBINUUwhdobDLrYmPpJXvh8pH
         2o6825xsSYcUdd+iuU/5tp4aih9F6WlSzl5hlO07osDmx6BC9/SDoJd7yzmcfTUI4n6R
         e9k854sRZOfj9NhUEEK9Xq/OUFWU7LHTEUcptuQhhA5sTgT0/y1t/AItSdeL7hWQMlzI
         BqZhJ/XfWHwNtdNUK5YMqf6cPK+/+Od5VYUGKA0DVAToxR+blrsJvFfiahk+5x2prR76
         2gT9WiMCLC9kEiSm5MUFdItB2BMMmnQNfrUvEPGFBh0IVtOLGzH0Hx//waWC3IrBiEgY
         A5pA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=6EyVP3y/SVuuUwEejmWzbKJlmXnxhlBx4JoOclAcusw=;
        b=O964A2LyW0QSXq5NkGLgV5g6BQQJm6UnQMHBHzqKssOIWZ6/Q/DtppeyzW/Z8JEx1n
         pduqccCQVOxmSefgGh16tlNNq4LFNx28lKcR9L1D2LjtLeKS6RxLhIzS1cGTXkmVacY8
         B2AQcRB/FxodTRSP4bnCuVLCHTZgjUKPhF+WBcJjEDyqnNvH+f3SqIhEHNIPWIh/2FMr
         ox4hheqpD4A3/cA8DxEDc4HtTk/6SsOr9LQiCEhxQfkLU1VcMVpzAHip32YthgvmVLa7
         kMaR5Jc2J4uYRu2xzyANqLoR4g95bts5/GVvsfconvJogfuruw/eqhB130zMXiKNUJFI
         NSIg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dqsyaJm/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6EyVP3y/SVuuUwEejmWzbKJlmXnxhlBx4JoOclAcusw=;
        b=MLJXs6HeI+mIqImhN6ncjlOqfdSZpRI3wsrnOXJwD7TOJYHhPiRAeJDygP3Gt0N7wO
         PdF2Q5WgPhYgWJdASzYt8LtCRLXSl2cUGXbOa2VyZ1Ivnpa7hTuZJfx463WZaoXeUP50
         usQLd9ulx8GSjK8+JEbeZti6pKe4ptOP+4whkpNXxCYIkvetwhLZUrDq977LdmT6fRsj
         /kLg+eslN3UNKuFh5mXJgDnORlJHd4Jg1qEG2PyJJgvviht+vC1fvJNzkHXc5KhB1HBH
         Nw/lud0pfqoUYoUu8FqIdVQ98lJldXn39gLJ/9N2OSVwyBvOLx+hAPg709HlyGXM11Pj
         a55Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6EyVP3y/SVuuUwEejmWzbKJlmXnxhlBx4JoOclAcusw=;
        b=b5SJMeXcRtZ7rN6uyNnt4dUzL6f8HYRuSwOQh67Fhri6LDMhEZCQuxiMAX2quu/wOP
         TJyjXu1WqwI/ScnD01tXnNUMROu/lSoYG7m5goRcrlxjC9s/ujMdWfRn2eJQ13RYU/Fc
         zshug7sjT3JKaxEBK9vL0VHY0wJQRsolDgqgSjawMatprRWJPO0fJ+B+SWD13nyE6jYj
         /zWzo6zjS2ZbDiHhRcaYFs9zOLnWZfGFEE5boQGG8NbBUiNq+DownlXwXnmWlHxTFUnk
         jUPilroyOXsmw77Nc212seE11jzrC8j6vygTnESlTmwsntLCIi2s7c7pj2gOzUbN/7u8
         JZ9A==
X-Gm-Message-State: AOAM531Hrx+8vyuwcwoOUAq7Q4oDZzRXkoVqnfwWRlv057MMAWrbHn7q
	Uad62sCx9U5+G2nq7KE4nKE=
X-Google-Smtp-Source: ABdhPJzYrpbD7tpVhrcCqDxz/a3X83jSvB9n5/TO8WQ2hOmSiY2HfoR69NpA1X+ImsAbM5OzZypUxA==
X-Received: by 2002:a17:90a:e16:: with SMTP id v22mr2387818pje.124.1598473387791;
        Wed, 26 Aug 2020 13:23:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:8cc7:: with SMTP id m190ls3888pfd.2.gmail; Wed, 26 Aug
 2020 13:23:07 -0700 (PDT)
X-Received: by 2002:a63:4503:: with SMTP id s3mr12078703pga.119.1598473387433;
        Wed, 26 Aug 2020 13:23:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598473387; cv=none;
        d=google.com; s=arc-20160816;
        b=fBVDjCPIRZkktO2qbbzPaAydDO8BDHFMAhmQcOWMGja+lw5CkwgTx6iuYAtX1//UVA
         SJF98hskT3pqGghl2cvEGmAnEMpCAnttz/R4SdXoARe/bkMN4PlyRktBrMv+Z1AopfIj
         drtsOoVXsXY5sdShxsvyyYj4Hq7MXW0hSUynw6EhUpKmXXtrnlysbK/1EbSGWePnrITv
         drbJBzmXtxBtE9Z1vbIJ9q3Ak1djWA7fPLJ4pfvKaALY1/9Wr3M1/zn5KiVuRXC6EKal
         uS6aXiPlLqsSF7umw+PvVYS/EhfKVYZAiA2HINKY5+yZ7ZXQnXz0LBDoUvD3jswZcLoE
         J5kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=DgAyDIRlzmxun3egnwIl4OmRxDfDBRztnOUDb7Nbd1E=;
        b=ypVRxNwNxyFHU844D7wukMQT1xoCOLy4Vda5sevb6RLL+LOQkT0NVgcfgd9OqunvPZ
         vM6RHH0tUdA+jUZBs2SQ+iYOHruBsjXIQ6gZpmprIr9rSWVvV1KkA/UwUgxHNx6a2/S0
         JEhoX0mHoBcLRUER3D0MNYZBLt8WczenuimrgzUNtwPNEU4loARFWpsKaPI10U+qkrkw
         dYQhPNsoVu+KuCatQJJUl0rkksUGjMwKopsQwYS+TP0ms8BB/Y+CWakPHvuNHW7Xt7y9
         GJLWqfofqFYoVNF/xzm9LYKnCVYw4AQn7MhbPJhPZzzwkBtW8oNzzAGeCkd4QGXSJAK/
         Gmuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="dqsyaJm/";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com. [2607:f8b0:4864:20::1030])
        by gmr-mx.google.com with ESMTPS id kr1si1509pjb.2.2020.08.26.13.23.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Aug 2020 13:23:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030 as permitted sender) client-ip=2607:f8b0:4864:20::1030;
Received: by mail-pj1-x1030.google.com with SMTP id s2so803840pjr.4
        for <clang-built-linux@googlegroups.com>; Wed, 26 Aug 2020 13:23:07 -0700 (PDT)
X-Received: by 2002:a17:90a:a10c:: with SMTP id s12mr7569623pjp.32.1598473386879;
 Wed, 26 Aug 2020 13:23:06 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 26 Aug 2020 13:22:55 -0700
Message-ID: <CAKwvOdmRoevX15PoQPjEa_WwDz0c_2qy8Cn_+VKgnK28CDBYQg@mail.gmail.com>
Subject: clang built linux + riscv
To: asb@asbradbury.org
Cc: Palmer Dabbelt <palmerdabbelt@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="dqsyaJm/";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1030
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

Hi Alex,
We've been teetering on support for bootable Linux kernels targeting
RISCV when built with LLVM.  We got it working, then had regressions
on the kernel side, got it working, had regressions on the LLVM side.
Is this something you or someone you know can help us maintain and
test?

Looks like some missing integrated assembler support:
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/377856754

Not sure about this one yet:
https://travis-ci.com/github/ClangBuiltLinux/continuous-integration/jobs/377856741
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmRoevX15PoQPjEa_WwDz0c_2qy8Cn_%2BVKgnK28CDBYQg%40mail.gmail.com.
