Return-Path: <clang-built-linux+bncBC2ORX645YPRB5VMS2AQMGQEOP32CNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 84F0D3194A0
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 21:41:27 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id v24sf3447322ott.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 12:41:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613076086; cv=pass;
        d=google.com; s=arc-20160816;
        b=g0X5JuG8iODGVKz4lQfdP9DGF5SGPKbUMG+Cbw7az5tYKWj79T08A/znq7XBKzBL2/
         wrMgNFxb8qaA/tm0ao4lf7vlDOMeCwOaZfk1ezj3LiDYOOgPrn6KVUMe0mOHxw5hPjXw
         TImZ+m5qALfcnA/KUYrF3SnMK61AuV/Rd7fX4OPqlIHDCl4gzW92+CWrrlF25WxR4SE/
         dvJJHsyNTQ0oseI5dyjOICwSUuY8JMdIG+dVQDSi0DpimBN3Cn9gyGrW3JrLgu536v50
         ZSh/p1PsExltQEm/DhX6ezqngqEqJXkWizLwQlsi2xsBlAak/m66psuVaCnrRvb6v+2q
         0oWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=Nxf/XiOOsIuoUmRZJREZJRBJ5fo/PqdWMf57Y6u7rHk=;
        b=u5W+89EIMyK58LVEwHGYIFavDnxBbvkio6Ua0K+rQLm3SOJU4m9e1Rk+qzo5FFpJvs
         ND4C6xDdUeBPGlp1LgMcGwE4vtQh5dsOBtCLLaGdMc4iyYafg03ImFbS2yDwCbrTbaNg
         ZJ1h+Qo2835KjB0lORHKuFs8rtZAvyFWmoaZoaBqJkznYHCLD6aZT2/1UZXf/+uJY/4I
         tVFtTtfBV8JXl8v9esQU8OPW3mxt8D5K8uNg6BfiB0JWWyFS8RGot6pgWCGCsXBTHoxZ
         DVFnJjMx1NOZvxJzPniMU5IYlIdLrd/7uqdVJBoQRH0NARlsHjWE7ncgu5zxXCQRyG6c
         ZlAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JwpYmrz5;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nxf/XiOOsIuoUmRZJREZJRBJ5fo/PqdWMf57Y6u7rHk=;
        b=bimD8xZ17xvGdxeFo9k4nJklAizCGWCGPz2+S+oQ90pS10U0Gyax5ZuBks70hyFLUP
         P6rrkKjHIy6tKZFj2NqTflvQvEKCKbomuCevOYq6CrL1dBcCFNEBVGJgR61ypEkAK8t/
         zfeD2ZJ+4ZFoRXbagm2KqAkTUNfw/AOH2rvrMsdQI+m0K92i3wer5Njx0vde+7vS9bf8
         EO+yM6X4eq62pk8/YxGc1oZjSvuuXa+NDPV7UOxgAZ5JljXkwlyhtVUhgA9yZCFQpJDK
         g/gFZlYtPuAECS29FGUYo6wzk66tv4JZEDdiXqlFBZrUOgHyIC7U1olVXD3SvZLC+TlI
         Myxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Nxf/XiOOsIuoUmRZJREZJRBJ5fo/PqdWMf57Y6u7rHk=;
        b=eB8eAXkEq5zCLM+ANCrA/OmafrsgeKeHC19bvqclEbjlzNcoMAc9wnR2PDONaERTo9
         x1VJvqCjhE8y5Fjg1Lz8U3l/xtLNM4D99G273D2UZbp4wmHsu6DCnL52blpxYmvUMO/k
         RFNBKW04FT4C+Rh25rHHq14p72hnNTbCkn2ZEwtnc9sfCWcDqwu1BAM6yuz0ZsUqNx96
         4D9dALaTi8MT3M6q6tJXEDdtG9K+5arcUA+1zJXtWip8ELQ12xtfpOPnGgjnNz/k9mDN
         TfB3GNLtMLUzRS731hAv68QY/tQKKPPV1EulMZ6q26mVkD4Yi8gry+Nm/I+QKavU9VC+
         8iZA==
X-Gm-Message-State: AOAM530zuAl0CU01k9TvxJO1wfv9QYnJpElBfsOEbo9/6Y1jAuJj++6U
	ipUH3hJ4gO9KUSbrlDgGPZA=
X-Google-Smtp-Source: ABdhPJx2ha4U6cAORCjMjYvm3nOw0p5tT/ZL676R6gmac8EUlUZ75Wtr006aEcjwHqxyRzJblW7o+A==
X-Received: by 2002:a05:6808:18a:: with SMTP id w10mr2098497oic.105.1613076086521;
        Thu, 11 Feb 2021 12:41:26 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7d19:: with SMTP id v25ls1579100otn.4.gmail; Thu, 11 Feb
 2021 12:41:26 -0800 (PST)
X-Received: by 2002:a9d:7d88:: with SMTP id j8mr7206964otn.45.1613076086130;
        Thu, 11 Feb 2021 12:41:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613076086; cv=none;
        d=google.com; s=arc-20160816;
        b=O4mSlZQ6yGq3w2ADvzCpOhaPps8YJaiwC5zz74tqyj1ltrxiLGZmT3NkMNtwk940Qp
         XrYVf+djTnHgY6uh5Qkq/B+ntGjn/TDeVxue162w3babrFe6QMXPW8c0rn1N/0YjH02b
         68sDIYHghLI0ZXD0odYfVx0nv3yrW/PdRDFCewwjE68YZtO2GkAVnoYLos8sgrVQg1rZ
         dHafm527rvFXkOo56xaAXh84oTv7IVHCi6xOfifJQPI9Plfn3OBuLFNMVwzHfoMe1vpu
         1OizgU8SRLwoGCSBzkYgqFUiLpbihBpEVZem4HLfAbs1/17m663cAROitNdzrC/+1/KL
         x/cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JqZZZvFE5VxL++dFfoZprDhk9+CSenhmKTyUPdyCU/U=;
        b=rmwEoDE6Aw6hRg0DpMwE/uDyzq/cdBdVygX/aDNyexFi/Md0fzmjoXWn+ywRtHwDq/
         MeWX0v6qqvFlT/D7sexmHqPbnqzlrnbz8wsz5ufwwUelc/9nfEk6QN50c37i9FgvyXL5
         RXDY9zrPFe9nU81O0abso0upYgonpARld8DCv63+JT0g0ciftDAoIwvQFHCC5Jky3Tt1
         +ioE/JIkbyktkHOLpLrqhtWaG3TQEml89XtKEDfDM7gw0dfwjMJw+P/Z+UnFhwHIIdLu
         0n2ys5zWEHugSKTNNRkICdWyOfLP8MwFaeWl+eKeKR3UfTvEjT/WOFKGlaJj3yPjh1sK
         BhLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=JwpYmrz5;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com. [2607:f8b0:4864:20::933])
        by gmr-mx.google.com with ESMTPS id m26si548608otk.1.2021.02.11.12.41.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Feb 2021 12:41:26 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) client-ip=2607:f8b0:4864:20::933;
Received: by mail-ua1-x933.google.com with SMTP id 30so2185147uac.7
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 12:41:26 -0800 (PST)
X-Received: by 2002:ab0:2448:: with SMTP id g8mr6669684uan.89.1613076085437;
 Thu, 11 Feb 2021 12:41:25 -0800 (PST)
MIME-Version: 1.0
References: <20210211194258.4137998-1-nathan@kernel.org>
In-Reply-To: <20210211194258.4137998-1-nathan@kernel.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 11 Feb 2021 12:41:14 -0800
Message-ID: <CABCJKueyXp5EQnmZ7a6HR87oKwDBDukprnJWT620McSYFd1SMg@mail.gmail.com>
Subject: Re: [PATCH] qemu_fw_cfg: Make fw_cfg_rev_attr a proper kobj_attribute
To: Nathan Chancellor <nathan@kernel.org>
Cc: Gabriel Somlo <somlo@cmu.edu>, "Michael S. Tsirkin" <mst@redhat.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Kees Cook <keescook@chromium.org>, qemu-devel@nongnu.org, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=JwpYmrz5;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933
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

Hi Nathan,

On Thu, Feb 11, 2021 at 11:43 AM Nathan Chancellor <nathan@kernel.org> wrote:
>
> fw_cfg_showrev() is called by an indirect call in kobj_attr_show(),
> which violates clang's CFI checking because fw_cfg_showrev()'s second
> parameter is 'struct attribute', whereas the ->show() member of 'struct
> kobj_structure' expects the second parameter to be of type 'struct
> kobj_attribute'.
>
> $ cat /sys/firmware/qemu_fw_cfg/rev
> 3
>
> $ dmesg | grep "CFI failure"
> [   26.016832] CFI failure (target: fw_cfg_showrev+0x0/0x8):
>
> Fix this by converting fw_cfg_rev_attr to 'struct kobj_attribute' where
> this would have been caught automatically by the incompatible pointer
> types compiler warning. Update fw_cfg_showrev() accordingly.
>
> Fixes: 75f3e8e47f38 ("firmware: introduce sysfs driver for QEMU's fw_cfg device")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1299
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Looks good to me. Thank you for sending the patch!

Reviewed-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueyXp5EQnmZ7a6HR87oKwDBDukprnJWT620McSYFd1SMg%40mail.gmail.com.
