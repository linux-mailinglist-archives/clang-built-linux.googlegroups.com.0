Return-Path: <clang-built-linux+bncBC2ORX645YPRBIUO3TWQKGQE5KWQ74I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id DD148E74DF
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 16:20:03 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id w8sf8559403iol.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Oct 2019 08:20:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572276002; cv=pass;
        d=google.com; s=arc-20160816;
        b=oLybdwfId6+u5RTmGz4lKFc4JHZAvz7P5VQc/BsN8nDQPoINcT2ioTg0XbvoD9Ciyf
         AB7l+R2Lkvs0oCgQWj5RY69w/maVZXkiSIrrmn/yRdagojC5hTxQSGyFnecZNzKJBcSR
         dFd65OsmeGN734KhTuFpNNPAACYFPs7avSbRZsKjk7gMVHnhqdEM7CSwSNtpIYArmQiq
         RKIB5Q27wJkX5M3BdhRIEYYryPIJnqhaCphGu840pPRjsK8qfSpcpqj54FlaQirqgaHL
         pKhJxtlXTOcD0ntMpG5/EBQx5k1rCOlFltqxJhmopkKvCLyaLOX7qHiQckMRw3CMDVsV
         Z47Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=E07x6IkV1EmQNF34X1avDdGyXfTH1W2BgUZTCQFPzVc=;
        b=qtONVQquaWJl0h0AnAkUaQvEik5DmIAaq50rmzMbAbp20/EqTXwVmaBa6opl8zx4kX
         +6pHAjYnKNCo2gtULiGzFtp8ZI2wJ+/d0hpXZcw2k1cm/ge8V37avMg5gWb10N4Ez/TK
         3bzgzqXAx5exmbgCEdQb1nPB3n4L3IB6k845QWz7X6HnRHp4y0Dijy2vQ4HCzxTb9nHA
         YxNNa0v3rzmgY5U1LUmC2LClfmk/sAMvJjXiX6jH97+IMSeztmJAVT8ntX8smTAYpEVK
         aT0fkYDL5RrRggdV1Jljyh5eBylEcaamFu6jAaCeG6K4d1Djj5xWOH43rIbOx95L8cvL
         aw2Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eSmzhzPZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E07x6IkV1EmQNF34X1avDdGyXfTH1W2BgUZTCQFPzVc=;
        b=DLctPZRWpMymIJ5I65BSOmolX44Jtl0lfVLyzc6osrTUGw8iIs40FvQHBb2EQpAy/4
         cfix0BkdboFzG1cdoPTGGWs1DXOYZqkkOw7SJIpccfhIEgKbgyHjy1qJsVP9YOHEgArX
         wD92sk9YIe6qPORw+foa/PXQJmbmspJxzv3DS3V8eNtSUD9d1O+t/hNXCpuAXpU8k4sN
         pRD4Cs8v2Yq/dt/ksAggIkxvCEDAwNst8GkPYmZNd3dq3RyX9Nr/vLQwk4K/3pa6ZN2p
         qeIDTpfjd9PgUIbpWqBm2XB4MoSVR7/5z7EzBlHyq97a84xIlVfcx82kJQUX4HqzSbfV
         6xng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E07x6IkV1EmQNF34X1avDdGyXfTH1W2BgUZTCQFPzVc=;
        b=Qb7JaVlMo+gqXKPZg3Dncf7n7I2hNiih6sQvdPa+UiWDC5ukRdrl/5vczOIPgS1zAO
         DZlHVYtPbe3q16w3xgi7ma/l3Tjd0oHprlNlAJPiFkptABE0oHWXbQTDZWoeiP/ovWf7
         ckaug2zRpJiv7YzUXHRMS0QPuWfxO0lPFo7O+AU+x7LJC7UDmvGVg+rnCbk4/IK5F8vC
         lKjMEzpM9ntiwdSv3VfO7PZrD71BvyIb/QbC06n571OzAzWYoFJn/nCY1Vm7+BQo1AGR
         rHGV+sDO23GCI8EQqYyFfWktIBxmNc4hrHlfCeb/p33dakaZpN/qzx0zrnu+IYXBo1Ox
         gKNw==
X-Gm-Message-State: APjAAAXRN82uJK3fAUpGtX8tEByxjR6rEUe03RJiio6ju8TtCsjLrDe5
	V4iERsDRShP9SlcGr5JdwK4=
X-Google-Smtp-Source: APXvYqwovBXfY7uQIFCcXmnshVA2/lb8UBncgaph22igQvTsrsjsGQQkey/Np/AI2m38jbfrYQjbEA==
X-Received: by 2002:a6b:4101:: with SMTP id n1mr6451765ioa.8.1572276002597;
        Mon, 28 Oct 2019 08:20:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:9a0d:: with SMTP id t13ls3028589ili.0.gmail; Mon, 28 Oct
 2019 08:20:02 -0700 (PDT)
X-Received: by 2002:a92:5a1b:: with SMTP id o27mr17857850ilb.181.1572276002139;
        Mon, 28 Oct 2019 08:20:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572276002; cv=none;
        d=google.com; s=arc-20160816;
        b=p97HKPCGyRss2J3ViwMnjx8o1K4jHM9cnbr6VUH5dlupo8fTR+jjX23AmNKxuVVlWl
         fb+6SPWDUYjmYd0E8nwOgh5NtZBEvL87oMKWdHrKS8g6Jxeet98XvX2o4CdWHdr8WXnD
         p5f87CCarD1C0RfEOLMBsv4K827+Ub74xjlLnpVqbnPHFRoX9pTrZ9ONscLNXX9UOOIo
         qf9puuHLZZYxKW0GwS7Nt1uVZ9X6hOdcYoBeE+dGF3MErWTg6raVq1zecYdyOEB76Jzy
         gr+3dtP6ImhKwLbb+VPMts3jC9JFxbImpWff+QQE6xEjN667Nwec3OMu8IjnH7WZV96n
         WPqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ZU5xUNm1kaCHgnGkxHeR/Mx1+L5fbEGEQysvhMTguc4=;
        b=btxzeyVMZK1sryNKKwJhabn5EbNTD/c8xbBnajkjtj7jxCHlq1h6pVCV3qPUAUIs70
         ej2kSUUZLXobCJnL5CsBypoUH4RqGn9C4r6o/P8VcK6xDm+oNL/TGd1xXW9tSW42kOxJ
         Ypqzijm9ugm813YgBGzPbEqat6g9PigobAGb1KmarE8q9fOvxsmUXQNh6ZWoOAkLUCkn
         Omv7mEwU92BR2dM6mARk4ZUjPip5UhCZFI+j4Ny1VfKju/Onl54vqxNJzhK4a/7OQooS
         vgbigIVpsWbZvS5C6IK7P6eeId05pip02YQt3Kih4nteOKIEqwnFDBcRyiGIrQcyzjII
         cWHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eSmzhzPZ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe44.google.com (mail-vs1-xe44.google.com. [2607:f8b0:4864:20::e44])
        by gmr-mx.google.com with ESMTPS id z130si638291iof.5.2019.10.28.08.20.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Oct 2019 08:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44 as permitted sender) client-ip=2607:f8b0:4864:20::e44;
Received: by mail-vs1-xe44.google.com with SMTP id k1so3971656vsm.0
        for <clang-built-linux@googlegroups.com>; Mon, 28 Oct 2019 08:20:02 -0700 (PDT)
X-Received: by 2002:a67:ed8b:: with SMTP id d11mr8849195vsp.104.1572276001000;
 Mon, 28 Oct 2019 08:20:01 -0700 (PDT)
MIME-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20191024225132.13410-1-samitolvanen@google.com> <20191024225132.13410-6-samitolvanen@google.com>
 <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com>
In-Reply-To: <2c13c39acb55df5dbb0d40c806bb1d7dc4bde2ae.camel@perches.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 28 Oct 2019 08:19:49 -0700
Message-ID: <CABCJKucUR=reCaOh_n8XGSZixmsckNtFXoaq_NOdB+iw-5UxMA@mail.gmail.com>
Subject: Re: [PATCH v2 05/17] add support for Clang's Shadow Call Stack (SCS)
To: Joe Perches <joe@perches.com>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Dave Martin <Dave.Martin@arm.com>, 
	Kees Cook <keescook@chromium.org>, Laura Abbott <labbott@redhat.com>, 
	Mark Rutland <mark.rutland@arm.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eSmzhzPZ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e44
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Hi Joe,

On Sat, Oct 26, 2019 at 8:57 AM Joe Perches <joe@perches.com> wrote:
> > +#if __has_feature(shadow_call_stack)
> > +# define __noscs     __attribute__((no_sanitize("shadow-call-stack")))
>
> __no_sanitize__

Sorry, I missed your earlier message about this. I'm following Clang's
documentation for the attribute:

https://clang.llvm.org/docs/ShadowCallStack.html#attribute-no-sanitize-shadow-call-stack

Although __no_sanitize__ seems to work too. Is there a particular
reason to prefer that form over the one in the documentation?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKucUR%3DreCaOh_n8XGSZixmsckNtFXoaq_NOdB%2Biw-5UxMA%40mail.gmail.com.
