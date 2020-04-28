Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMHOUH2QKGQEPHJFRUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 71F101BC899
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 20:34:25 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id d15sf24275308qkl.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Apr 2020 11:34:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588098864; cv=pass;
        d=google.com; s=arc-20160816;
        b=oj6dFy1jo5mteXn3DXVNn53J9mxUBIGbZ+AoYN3lZCAVEdXVkF2lmpBi8KweHwgK8T
         EkBhjUqh8q3Bsbgpdz0CHjaDxb+96jAGdGnDwuxNRBoF89ZurdRhyyHbkXFqQxOnWgb6
         XrrOU9ULl1wEtbvpAe8v21E+l2YJExWebn1ny1BfQvQ6y/NXjgOVC+/ps+W79UaNHlK7
         PGIDqItdWrCZPKtyaAlaYUCh4W6+WofxEVDByFaBmka2+jLU+MRoXpWzDUdXNllT7XfX
         T16x06kxmNckrjP/zjKxUb3pfpwuORAb2GSeQxXMgyIhC28Ma5wBxZYjsCbvVK09qQAu
         xC+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=UFmnxQokl24tsR8Xg0s5bTyQ2cp+CIk1mjinl0srMRE=;
        b=bFJROSYAnHrrk9fG9tJ/fr1iIY0qFFAbessHkG3CmMkR9OWYSUmrxh8Rri5hapGZTS
         YxA379ZhDHU0R1vNq2VWmYQ+RKQKRYifZ0MwdOiz5LMg83xHz4u4gncWSxPgigIsxWkc
         sGxPq1ezOZQEx6clJeHyJcnmyqAhIXjdp3cepQMw1FkWUyRamaY0Gpu/+UkogotMLAMH
         a8/zpyhXbQVTQzV+x/Udz6CTvtWMZTEvo6cJgazrfHSAvGLg0yPrFTHecVLA5RQ5kyLJ
         S9ILxQmtRjjLf6N0PJNbl+EZeJ8EBF+qJUgw5ar1ECJ2OzTWIjbqGEp/hZHyXSYZqK8C
         BwUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PzZLYwaa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UFmnxQokl24tsR8Xg0s5bTyQ2cp+CIk1mjinl0srMRE=;
        b=fpS9iicjorY1m97ILKoo0GOulsB0a2DeOBKYRjlNl+Ar29aVCc9W9T0ucZLhnfH0RM
         ASi2IZb+ADBO2lkqL3CGyI9S8vtGNioE8AUVYsCvEkGmMvUw2SzwpMHXsH/nWybhxY3s
         cFAzv2a0wN6HxY8/c66+vJIBd4dmWVHAzQ+B4oxWFCtCtaSzLyIVpldDOC7EkAzMEghL
         AzhxNfArsva44kLV9+r6THVxyDNTkM+CjTlF1dxAwapMMzDDcL73d2NIgH2z3jhZ5Lyt
         Oc4Cid/GTb/BiayyqcjJ3LjRGKFOZkK3fqfde9ND1QfMQdSgUvIbB/aeE8j+G/JFh9M/
         ek7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UFmnxQokl24tsR8Xg0s5bTyQ2cp+CIk1mjinl0srMRE=;
        b=XLCLnVHuPIEnvg8goBi/TlUAgFcc9iWWVFE2LBSOogACdunXdivRmC2Kf0g4hTPMhE
         bwO4ns3iAiod8s3UwaNeRtu9QxyideLRUcopPFeqeqV5I6Plt/ysWj+aoqsaOwGtp384
         yD/c2dv4HutlM+mUCTxLyh1Mz4dKcaNj+4RwSgpDL5cLuXPChS+gzYMH94Eo7mB0dDin
         6+QR9m+5b4InVhTDJnDN1TU7ULNJ5r5CxVxr03nH68ejw+5RECGKKhB0jbRiXNYZyBaX
         NMqPRuT6l2bv4oDSBB0y9puWOb/lg8H1KiqCPvTnYNXlAgguApFi/Id/tXjp/znoYmYK
         lRxg==
X-Gm-Message-State: AGi0PuZISW0naZQRlM6+JCwTnl7SabuitJjXsevvzwZyrxuef4VYAla6
	styWxFr1kbqGJWffR0RhBGM=
X-Google-Smtp-Source: APiQypKaCMmUIrkPJWdXEMcRKKGKX3DG6q0SlG7KGQN1TzPzbOs59+zYgME2siQe4bfzNdAj7drGGA==
X-Received: by 2002:a0c:b8a5:: with SMTP id y37mr29467193qvf.73.1588098864445;
        Tue, 28 Apr 2020 11:34:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:51c4:: with SMTP id d4ls13351341qtn.9.gmail; Tue, 28 Apr
 2020 11:34:24 -0700 (PDT)
X-Received: by 2002:ac8:44aa:: with SMTP id a10mr30561304qto.230.1588098863913;
        Tue, 28 Apr 2020 11:34:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588098863; cv=none;
        d=google.com; s=arc-20160816;
        b=I1MeNKXSMonlgBmHwXth87vJCL+YDzJby71nKeTNxIWUd3mtuTTCdkiH1P0sIqH7kX
         67SfRnNZkFpYPFdqIUP2ofhwcNypfac3Ldt3ZIbXciNBkm8IUYPJ5PkntYo/RCEMjB+b
         daPkC8j0VqWuEsuT5TcbI1oIpJdmfw4tFOrI3uetdl9lsV9wfsIQF768AxkHJ70wst6v
         anlCp3P3JcVf20aBwrFVLB1WcbndPK3gfvwZUPKpu2koxgMEvp9fYhgcVXjQgucTyfvL
         +NOkhAoNLZFAmAkLuhtupCjHgbB7OW85oJ7urT7ktpnMVgSSSlL/M9LXfb/gdA2Qutuh
         i6Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=d8J9/+H1aJgIU0iPd3k8kUXfWA6cvbV7BCbp34hUMis=;
        b=EN2N/cuz1lf+DH9v8sUCkbvnu131I0At7aXtFmDFWFP/rYdErC2KDlfFsE9SGkOIMJ
         uZDuKL7lbExg08rCOGJ0c0JRmA/zW5w4sNn6YiF+HHrp4GBJBG57RK4i7OpoqOLw6NQe
         2Uzsqo5yLOu69A7tWAx3aYLCrzVAem/gl8zphKKFPvEtTv/MEXCuHZj0y9HnF0Y4ITTW
         YE0C2I4rrUEWfhQYaHQAi2Hi+M+OPBRIo7AsNFq/JaAVBJ8LwWrzfOKe+tf/jmUyhpYr
         +tCnPCAKy8PBLEGxm1YDVkz1yugcZIIEeVQm7+075S1JsFbFCZ4NaEoXS2chlfMQHSmM
         X/Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PzZLYwaa;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id p9si1632257qtn.1.2020.04.28.11.34.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Apr 2020 11:34:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id w3so8775297plz.5
        for <clang-built-linux@googlegroups.com>; Tue, 28 Apr 2020 11:34:23 -0700 (PDT)
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr29496990plp.179.1588098862653;
 Tue, 28 Apr 2020 11:34:22 -0700 (PDT)
MIME-Version: 1.0
References: <20200428174221.2040849-1-natechancellor@gmail.com>
In-Reply-To: <20200428174221.2040849-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 28 Apr 2020 11:34:11 -0700
Message-ID: <CAKwvOd=cb-dyWGeMoCE4+zdgA1R=t=QPkzU9EGiCtgdzXke_cw@mail.gmail.com>
Subject: Re: [PATCH] dpaa2-eth: Use proper division helper in dpaa2_dbg_ch_show
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Ioana Ciornei <ioana.ciornei@nxp.com>, Ioana Radulescu <ruxandra.radulescu@nxp.com>, 
	"David S. Miller" <davem@davemloft.net>, Network Development <netdev@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PzZLYwaa;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641
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

On Tue, Apr 28, 2020 at 10:43 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> When building arm32 allmodconfig:
>
> ERROR: modpost: "__aeabi_uldivmod"
> [drivers/net/ethernet/freescale/dpaa2/fsl-dpaa2-eth.ko] undefined!
>
> frames and cdan are both of type __u64 (unsigned long long) so we need
> to use div64_u64 to avoid this issues.
>
> Fixes: 460fd830dd9d ("dpaa2-eth: add channel stat to debugfs")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1012
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Don't forget reported by tags to show some love to our bots! Thanks
for the patch.
Reported-by: kernelci.org bot <bot@kernelci.org>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c
> index 80291afff3ea..0a31e4268dfb 100644
> --- a/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c
> +++ b/drivers/net/ethernet/freescale/dpaa2/dpaa2-eth-debugfs.c
> @@ -139,7 +139,7 @@ static int dpaa2_dbg_ch_show(struct seq_file *file, void *offset)
>                            ch->stats.dequeue_portal_busy,
>                            ch->stats.frames,
>                            ch->stats.cdan,
> -                          ch->stats.frames / ch->stats.cdan,
> +                          div64_u64(ch->stats.frames, ch->stats.cdan),
>                            ch->buf_count);
>         }
>
>
> base-commit: 0fd02a5d3eb7020a7e1801f8d7f01891071c85e4
> --
> 2.26.2
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200428174221.2040849-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3Dcb-dyWGeMoCE4%2BzdgA1R%3Dt%3DQPkzU9EGiCtgdzXke_cw%40mail.gmail.com.
