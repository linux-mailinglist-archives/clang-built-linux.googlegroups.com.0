Return-Path: <clang-built-linux+bncBDYJPJO25UGBBNFP63XAKGQEXBEIJ3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id D956D10A5E8
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 22:23:01 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id h8sf8113138plr.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 13:23:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574803380; cv=pass;
        d=google.com; s=arc-20160816;
        b=fipVVySg2t3MgkI4Xqq6hSQpFpNW+t5XN+Xjwvgd0oNRQi/KWJosBTfC0rWhE/kcIv
         RnNYQeDaP3VI84IBgNIuMewB3hjWcfHzRaIIzGSoH6gX3LI3opRCWYofLPI8yeT2kMuE
         mv+e48Lm0miS6mk4nBC1gQxh8pba61GtznPVlzx+vPP2M2fp4kc833i5ufeB3UDn8zz4
         MDZRJRL0xX8gjAfmPz3T8I6pP+sewlmvxLbiXxCAngs/o8vlWRX8TPr9B1EPI/6jD8MM
         tf3t5iSjGpq9tUhGzlz8EoMLkTRShvXyoEObVxiKeun3h7D3Veiy0K7o0F7dOXXXDbWe
         2nLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=aOUGfm+jdZGj4lrQUZjCpqFY1eRpgYctHaVrv7/sQjE=;
        b=uLWaB+PCwoFqZ4C9jrx6CZLyp0cUIcJJHaEBdVYb7cnLmrZvkdpZnfAyfXMT9C7HId
         no8eSPTi5TriD16UfLnfOr9Z4l7J4Jyg8ZBe0F1WCZJ9r4/esiyarHiuP0NhtIPud+ss
         7vLloRguwuZrFDpMc43utesKDPXyrZ3mZnAwK/jDb2yCebJBZex7eNaPZmG2Nj+Wyf9n
         KuLdt62kopW6bQFsOLVie3afCe/o8Bo2iDIG92ZOzpXry808dFmRHUeARinfmTVJcDvF
         Drk/INHcHW+rNbht7mKHbK09lROSzML22IGVsFMCx+hPzdc9KjaP+YfeXZnnzVsglWUs
         s1Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dQKartIz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aOUGfm+jdZGj4lrQUZjCpqFY1eRpgYctHaVrv7/sQjE=;
        b=IwHiZkBediOQAoG6H22/tjsBPHrgAJUjH+XJfvnyQ7Ul3beiF458ymcfNxfX85CHHw
         DO9FooBclYGLlyw49is8tQHKuebV4QN58hDPlWYBs+M2b4s/XVnfqCCska2NH0kXkvKZ
         yEDvY5bdQWm+U8NLrTsiZeRJD3Ry2eGloLniJpl79vuNpszeCUIhSZcAHVMOJBbUWM2d
         HnTMl8KmzfsNJUkrMI1JteG0OAp4w/Eq7m+SkwVlDrBxJ1+rIM1n0qtxszxboKoj/Qvq
         yyz3dnoQjmdfeJD0esPkED54JOolcoMuwWn6oMSV4ZM+OdRnHbzATSPEepMy4wr6Paq0
         IvUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=aOUGfm+jdZGj4lrQUZjCpqFY1eRpgYctHaVrv7/sQjE=;
        b=kCZ7wupi7TLW+INeMehmwQXN9oysB33hVBlWvGsuzjHkuLdB832L7iOkQ7k1+QSmVo
         5b892OZTdE4v6RPxSaIU/9KruOI+ivz+JZo2Dhf2zJmg9VrkOGh4mGPJkAWO3kt0Pe33
         JDZ6ARgrWCqVrAr+PkQqPRM3bbryJjnatqsga1LBXy24tYiPeBCCACefHNl3PXLuHhPg
         +Nxvf2brydggafRIneYs0hC7aCncHxTep1h465D8AZNXODBE3/6UZdr0p4KPfqC92Rvx
         QNWceBZIF9J0BHn3erB1XdMM+9X7kkQzFIMs75Zu2pyBdvnDDCkSzP6ur0z8MiFv+ms0
         QFDw==
X-Gm-Message-State: APjAAAV3mdGICTdmcbl0FulYEhNWVYUGcwnQbIYAZnlIEltaR4nlh7Q+
	xlmWV8gVu9YbUAfjhte36Qo=
X-Google-Smtp-Source: APXvYqyu05ZSIHjjCwxfxxK6CN8X1d14qJT+I1y481+lUEFdfZi5qZuThQu55GNa6oV3VTNxhsyLxA==
X-Received: by 2002:a17:90a:cc07:: with SMTP id b7mr1432274pju.135.1574803380138;
        Tue, 26 Nov 2019 13:23:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1d56:: with SMTP id d83ls5257453pfd.13.gmail; Tue, 26
 Nov 2019 13:22:59 -0800 (PST)
X-Received: by 2002:a65:5683:: with SMTP id v3mr695087pgs.190.1574803379668;
        Tue, 26 Nov 2019 13:22:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574803379; cv=none;
        d=google.com; s=arc-20160816;
        b=Mm4EmREOzIBYoIH24535ow4JCMSfbLGCL5WaUXmUgaJKKpBGrqn1uhE8+vvuAZxwI0
         JJdsGtA2CGZKs0kvyBJfLoVOCJCKj2NGuUeH9/6WkbxEF2/hLHmPgiwmh7YzCKGxYTiw
         E1O5R/dK5Z2MX593z18EB7AZENKTYLPSV7y1S7U+y6gAHJjTDVAYEr1e3bey/v+Q69k+
         LeC/SWMeFkFwRL/LxEqFi6MkMCuXBL5GGdO2UX6padGE7VU+bcEn3+1EF6lV6MeEiM1w
         zuxJVW/tX07KGCXaG8IrSa6uaTdhYGQD5av0hrD/SjwCTQScDID9cobcun4t4J/EEAxZ
         yRDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=6/C6I0i87/WZnXIrmrosa90/eAl9LYlEh8C0iWOtu10=;
        b=Q0OrYmjQtmNpWzkG8WijeW21KBTyYSKwjVcK0t4dw6fBrdRl2d8OLr7GSQcpqbto+l
         Tg99brOb/3Z4JDMuybHS3P5LH2FiTSsNf5F9hgBwr3PvwtXBBpOPjcU6yJRPEoADSiaW
         pHn74ZRsIHdrlDKM6jUfYjt/kjlewObKAsIDh9kLteKeGmMbp3J3/9zLYmEL5RHNojMN
         oMVjEP35f1UQ8J2Du2kj5gboLoIh4rh2VQM355kFdsc9hBe5JKuOvu/2bWiku2sxpWsO
         6cUuVHxfnUrqQZwGxd5Ppn64HXqiGyYxIrgzbKfeanfb3k6aMCE2AOr3s0/bZqPhLYbr
         Mg0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=dQKartIz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id h18si155511pju.1.2019.11.26.13.22.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Nov 2019 13:22:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id t3so9190548pgl.5
        for <clang-built-linux@googlegroups.com>; Tue, 26 Nov 2019 13:22:59 -0800 (PST)
X-Received: by 2002:a65:590f:: with SMTP id f15mr560009pgu.381.1574803378796;
 Tue, 26 Nov 2019 13:22:58 -0800 (PST)
MIME-Version: 1.0
References: <20191126201226.51857-1-natechancellor@gmail.com>
In-Reply-To: <20191126201226.51857-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 26 Nov 2019 13:22:47 -0800
Message-ID: <CAKwvOdk5wZF6BHR0_xSL=H=tmSFT42qmn23etO3uV6w-PPgaqA@mail.gmail.com>
Subject: Re: [PATCH] netfilter: nf_flow_table_offload: Don't use offset
 uninitialized in flow_offload_port_{d,s}nat
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Pablo Neira Ayuso <pablo@netfilter.org>, Jozsef Kadlecsik <kadlec@netfilter.org>, 
	Florian Westphal <fw@strlen.de>, netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
	Network Development <netdev@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=dQKartIz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::541
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

On Tue, Nov 26, 2019 at 12:13 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Clang warns (trimmed the second warning for brevity):
>
> ../net/netfilter/nf_flow_table_offload.c:342:2: warning: variable
> 'offset' is used uninitialized whenever switch default is taken
> [-Wsometimes-uninitialized]
>         default:
>         ^~~~~~~
> ../net/netfilter/nf_flow_table_offload.c:346:57: note: uninitialized use
> occurs here
>         flow_offload_mangle(entry, flow_offload_l4proto(flow), offset,
>                                                                ^~~~~~
> ../net/netfilter/nf_flow_table_offload.c:331:12: note: initialize the
> variable 'offset' to silence this warning
>         u32 offset;
>                   ^
>                    = 0
>
> Match what was done in the flow_offload_ipv{4,6}_{d,s}nat functions and
> just return in the default case, since port would also be uninitialized.

Thanks for the patch. I have a report of this from kernelci bot, would
you mind crediting it:
Reported-by: kernelci.org bot <bot@kernelci.org>
Looks like `port` is uninitialized (prior to your patch), too.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
These two functions look identical except for the mask. The
maintainers should consider reusing more code between them and passing
in the mask.

>
> Fixes: c29f74e0df7a ("netfilter: nf_flow_table: hardware offload support")
> Link: https://github.com/ClangBuiltLinux/linux/issues/780
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> ---
>  net/netfilter/nf_flow_table_offload.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/net/netfilter/nf_flow_table_offload.c b/net/netfilter/nf_flow_table_offload.c
> index c54c9a6cc981..a77a6e1cfd64 100644
> --- a/net/netfilter/nf_flow_table_offload.c
> +++ b/net/netfilter/nf_flow_table_offload.c
> @@ -340,7 +340,7 @@ static void flow_offload_port_snat(struct net *net,
>                 offset = 0; /* offsetof(struct tcphdr, dest); */
>                 break;
>         default:
> -               break;
> +               return;
>         }
>
>         flow_offload_mangle(entry, flow_offload_l4proto(flow), offset,
> @@ -367,7 +367,7 @@ static void flow_offload_port_dnat(struct net *net,
>                 offset = 0; /* offsetof(struct tcphdr, dest); */
>                 break;
>         default:
> -               break;
> +               return;
>         }
>
>         flow_offload_mangle(entry, flow_offload_l4proto(flow), offset,
> --
> 2.24.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126201226.51857-1-natechancellor%40gmail.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdk5wZF6BHR0_xSL%3DH%3DtmSFT42qmn23etO3uV6w-PPgaqA%40mail.gmail.com.
