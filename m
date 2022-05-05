Return-Path: <clang-built-linux+bncBDG4DXNHV4CRB2HC2CJQMGQE4BXKZ5Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3608451CA77
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 May 2022 22:19:53 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id m186-20020a1c26c3000000b003943e12185dsf2099501wmm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 May 2022 13:19:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1651781993; cv=pass;
        d=google.com; s=arc-20160816;
        b=cBSn7XokdX6VxtUfu4u3bCO21Vk/y0XT8HC8fUNqC3UOZ1O4s18p3zH85/JYIrdO4k
         41j0x46ZdvvV7Hhxjw63UfKeUbdJuX/hE+EE8XUlb6FjGdTTURCoUbaqjFtWfZ5qf+7k
         HMuRn9tfJG9PY40g1eJNACA/zlBNTpAD01Y+AGaOJjyBqpwYr3KqCYRjaDhvYEEDoiIi
         Ppl/OxfpOB+Sa9QZHlTZ184niu8urjCxTUDN+QXMkRksUpzCS6IRBO0nOtXF3Ial6avi
         TXBnx2H56H7DexMq9RhZkYV/CAschRG1E66tjkWcTQju6Os2eZ43hVsZz46HsSpDHj7P
         A4+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=WwSBLkwzs633PZcjiwheb5EB9Z0qa1jNiPRihn4WLIg=;
        b=zQK0iImyNCe7j0Gs2UTNDqJIIFPGVzR6ISnWZxYPuNmchOrefcX/cpYUY8djF9FrvZ
         NDpyIT2K7wwjQmkw8tifudVxAWALXg45tsSTkHe4FkMPwszsj1z3FUDMPf3DIJxUfS4w
         +I4RLqtDvIT1+oM7I0tvtwT8dLwsxSuM2hOhxoClynRrMxXPR7xZLQhUDiOKpK2Gv9tU
         mz7B89k5hrlCoBCqNK4ZrjBY71/wb6QoabHOxRd6KSsM1rW/Zcix0cmJd2+91vS5I0sM
         V67/VYa/OroYusdg5xI9tPBtKiv6b1SSm8sRJILwf2Ot++nJa7Yy+DthpCgCBM6gffIN
         YrdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=PAx9fB2N;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.126.135 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WwSBLkwzs633PZcjiwheb5EB9Z0qa1jNiPRihn4WLIg=;
        b=mrpJYXk9BVdP7JpM/Ewwf0cb8GJNfydWkTNXIiQhJN4WVhVRMxhDa0x83qZi9rjI0x
         yFzppp6iRH0mtEMhbd5WyXQQWlmp/dKwBvzqpsye+mGvTorpeqPmlJrKtvoKItouKGI3
         tgwt+k8z5nzpMJdU5u61qZlVzgMHwx/WIS1qEXDY612JME2GdaBwyklq0S7yQalUTF2L
         CsUQUR1ODhJBUVk16qw/JSos02PjIUVQPHUZl+r3eMVZr1klPUjhwJ2Gngu/i7Sm41/v
         OMeGxGV9rKwRsA17ZN0Oe3UnGY21gALWloEVno9xIwxD+GRmG4cRt1BB+1dv230nQsPl
         4vSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=WwSBLkwzs633PZcjiwheb5EB9Z0qa1jNiPRihn4WLIg=;
        b=Z+4OKGzpG6ckagdX9ibl2K2EG8MjMpUwFdFg7XIEVOuO+ddU7SL4Kte/W6B++iRuLp
         XGrZpzAuFpBeuJgMhIw2ADcXfMDIlhf8jemEyJ6b1TUX+TDY1QDnGHuQ8CG3Mp1tnsQY
         haVP7LAdysrzaB+v/iWHTKjno/xhFVegeZrc7jf6E2HAg3gxWiUvHtIy3juxPxdJGZkH
         pKbGY8SDoJbbjZPlFFAPBhT4TH+j3D12Pa3QmZmeeLFUM00n8aOULIDPC8EVfzAj1/Px
         VT5vGhGe0T1v/GW3SdqBCyqhKdtq12FcAfNg1Le6ivwGXSRc/vf1s1VoxrJKTrpqxxUM
         l2Dg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316ZPePOQtSK4Mjdfc5PVeJNKfSL9MdHc0igAHqFWGZohRxsCBD
	wXH+MI6RbL7RFnshshwOpso=
X-Google-Smtp-Source: ABdhPJx9Ddh7X2ZYANY1VKJ8h2s5WAr681tBvfgyDNV3IK53vA1HHWdiOmBcuzFVsuzR89EsO7iuag==
X-Received: by 2002:adf:ded2:0:b0:20c:55cc:ab3e with SMTP id i18-20020adfded2000000b0020c55ccab3emr21031274wrn.376.1651781992829;
        Thu, 05 May 2022 13:19:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1c9a:b0:393:e698:3558 with SMTP id
 k26-20020a05600c1c9a00b00393e6983558ls2758999wms.0.gmail; Thu, 05 May 2022
 13:19:51 -0700 (PDT)
X-Received: by 2002:a1c:f018:0:b0:37b:c13c:3128 with SMTP id a24-20020a1cf018000000b0037bc13c3128mr6444382wmb.157.1651781991851;
        Thu, 05 May 2022 13:19:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1651781991; cv=none;
        d=google.com; s=arc-20160816;
        b=maIWsz52E4WlsnlfEPhKhGesZDF4L7FCfJnq2jvhRcMSCdyHxnaM33hpaCCAo4BJWm
         DJziPmQhcMaNn7/sYLuBRggkuxSj9MVfTzSIZadbfR4ET7I2VjRydNwg6ox7LleXnkXo
         U3EHjvd6eMSpegg2U8NwOW6H7ZsO5+OkCuONQgutpdB2n33AWT0ExsbugaFeqZtH1P4a
         WuNoIcsJdaGdAHnf8ontRHKLMfmTAtWKx/fzs6DY4My41Q6pdf7eaCwjMmrdqIhmXkzv
         3xFlqh+bQi91lujN3L++lviPOmzL6P8bvx/0S7aQKXvnJF5sfhqRWdZcDMPKqe64IZQn
         3/EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=mfmmC45qU72ZmI2J0NGCrXAXkweqtB+4X0ahEV+s6zQ=;
        b=Pov1f3PnGCdgL6JFcQiz7/getv9utabhIDGTxsiogIzXfP9SqfpOcaPDfhVh/k36uY
         wf1Q4i9IbAZ2g65JPxuCu1rIo7pQxB22rfdBcMApZF4L7vN2HAKrnuO1ydzgS170KzEC
         eh00sfW+diAlcGQxpqxqZwZIjphi+Ku0+oc0A7LlBWA9h3mtxv4RRGIjSlZVYNs/+g8v
         emvk02mOQd+c34f5d6HrQN3rVmvhPlWxerRY0wq8Skahjfw0TD4sdJGP8YpaHAHkcM9o
         +2tmysbJ6rJUcYhlxU1yziaXzkjjG3DROscHAcfRDzds5hWVvykQswyPz7/F+SyShxya
         +JYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fjasle.eu header.s=mail header.b=PAx9fB2N;
       spf=pass (google.com: domain of nicolas@fjasle.eu designates 212.227.126.135 as permitted sender) smtp.mailfrom=nicolas@fjasle.eu;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=fjasle.eu
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.135])
        by gmr-mx.google.com with ESMTPS id b5-20020adff245000000b0020c7b2af134si108723wrp.0.2022.05.05.13.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 13:19:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of nicolas@fjasle.eu designates 212.227.126.135 as permitted sender) client-ip=212.227.126.135;
Received: from leknes.fjasle.eu ([46.142.98.182]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1MGgRW-1na0dH2Qr4-00DsuE; Thu, 05 May 2022 22:19:45 +0200
Received: by leknes.fjasle.eu (Postfix, from userid 1000)
	id 2B3143C088; Thu,  5 May 2022 22:19:42 +0200 (CEST)
Date: Thu, 5 May 2022 22:19:42 +0200
From: Nicolas Schier <nicolas@fjasle.eu>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Ard Biesheuvel <ardb@kernel.org>,
	Luis Chamberlain <mcgrof@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	linuxppc-dev@lists.ozlabs.org, linux-um@lists.infradead.org,
	linux-s390@vger.kernel.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sami Tolvanen <samitolvanen@google.com>,
	Kees Cook <keescook@chromium.org>
Subject: Re: [PATCH v3 09/15] kbuild: stop merging *.symversions
Message-ID: <YnQxXsVKDZwj9ML7@fjasle.eu>
References: <20220505072244.1155033-1-masahiroy@kernel.org>
 <20220505072244.1155033-10-masahiroy@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20220505072244.1155033-10-masahiroy@kernel.org>
X-Provags-ID: V03:K1:kLv07Zu9KjSI8dVtarU8l8sxPufYBTVjB5tuKOltZ/T9hk437XX
 vNQ8NEBvRXubh7ts7FDOU2bMa4E55pDRJDTQNO77MACY5JbN+i20cUNkkZfWpaF6VKXKNsO
 K6ZEEHtGEvsnSVoXklrgpTo5J5l7CIEDsKJ4KoactoMHkKWNef3Lt1Zb6Uqthrmqhijy68i
 o6vPO+d07ACl7HYX2WrsA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:GEBew1HkSyw=:CtA2dALYABuAeqnB9s6zbz
 WOrkOByaGQn5pcQXLlYJM2W0SjTSxLOzGdZATyfGrSRH7h0O6V/HOp9oWzPg6xX9BKpKjRfOn
 IzWVAC9fLV+eqByCp5JRUpiImfbkHtks/O4PQjJjfjf+mw+CK+der90kd6OzfEP41/QFVd1kP
 iy7yqhYjAG1ixEkux1zPphXuSrfepTDIM5k2rAA/zLwT7Pf0cnlhCESbBcgZL5LjOh2dAYTV9
 IYkDFZq0yo4kBhkGibz85xtPz0L2Echql/qhbkWnZswwoALs6XjTkaYyIu6Jt8Sp0BrNlLwE2
 eGLy710OJ42xqDt1sGCZZczpo+ZjSUC1pbgFG6Lr198tjT/8EZgQZNNsw+caQ8OqUmXJEz89b
 IGxjrPuNhFxo4jLPceIrjw7I/UxkEHOlbvpBXFWHmHCn0LHBHGKwAEohy2mtbu9gErq48ktUG
 9MeCflRvY1pQyEytdMLaCm1jRgvZQTbhPrLP7K8xsjjhgiG8mC422czSvsktOQWd6T8Q+Ui1C
 Q3TZctSJ2xLF0gQMkExGmab4W9imwAAXop4ZuL4Pta0gslhicvoU3LrzpAWW+FScK5zfNp+eQ
 13LkT6YoChWDUfO1PogcQ6bSZlf7PwmjNy0lbIHtliTLRwupX5uEeysoyWib+0CY5ycIMBYBY
 q8ViV1QYV6Ct7wPgJCPvb4hHgOCtAr60Jh40I5rVKat8vlZw8F8wpZF+x6Jo0R/XDUQ4=
X-Original-Sender: nicolas@fjasle.eu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fjasle.eu header.s=mail header.b=PAx9fB2N;       spf=pass
 (google.com: domain of nicolas@fjasle.eu designates 212.227.126.135 as
 permitted sender) smtp.mailfrom=nicolas@fjasle.eu;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=fjasle.eu
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

On Thu, May 05, 2022 at 04:22:38PM +0900 Masahiro Yamada wrote:
> Now modpost reads symbol versions from .*.cmd files.
> 
> These merged *.symversions are not used any more.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
> 
> (no changes since v1)
> 
>  scripts/Makefile.build  | 21 ++-------------------
>  scripts/link-vmlinux.sh | 15 ---------------
>  2 files changed, 2 insertions(+), 34 deletions(-)
> 
> diff --git a/scripts/Makefile.build b/scripts/Makefile.build
> index ddd9080fc028..dff9220135c4 100644
> --- a/scripts/Makefile.build
> +++ b/scripts/Makefile.build
> @@ -390,17 +390,6 @@ $(obj)/%.asn1.c $(obj)/%.asn1.h: $(src)/%.asn1 $(objtree)/scripts/asn1_compiler
>  $(subdir-builtin): $(obj)/%/built-in.a: $(obj)/% ;
>  $(subdir-modorder): $(obj)/%/modules.order: $(obj)/% ;
>  
> -# combine symversions for later processing
> -ifeq ($(CONFIG_LTO_CLANG) $(CONFIG_MODVERSIONS),y y)
> -      cmd_update_lto_symversions =					\
> -	rm -f $@.symversions						\
> -	$(foreach n, $(filter-out FORCE,$^),				\
> -		$(if $(shell test -s $(n).symversions && echo y),	\
> -			; cat $(n).symversions >> $@.symversions))
> -else
> -      cmd_update_lto_symversions = echo >/dev/null
> -endif
> -
>  #
>  # Rule to compile a set of .o files into one .a file (without symbol table)
>  #
> @@ -408,11 +397,8 @@ endif
>  quiet_cmd_ar_builtin = AR      $@
>        cmd_ar_builtin = rm -f $@; $(AR) cDPrST $@ $(real-prereqs)
>  
> -quiet_cmd_ar_and_symver = AR      $@
> -      cmd_ar_and_symver = $(cmd_update_lto_symversions); $(cmd_ar_builtin)
> -
>  $(obj)/built-in.a: $(real-obj-y) FORCE
> -	$(call if_changed,ar_and_symver)
> +	$(call if_changed,ar_builtin)
>  
>  #
>  # Rule to create modules.order file
> @@ -432,16 +418,13 @@ $(obj)/modules.order: $(obj-m) FORCE
>  #
>  # Rule to compile a set of .o files into one .a file (with symbol table)
>  #
> -quiet_cmd_ar_lib = AR      $@
> -      cmd_ar_lib = $(cmd_update_lto_symversions); $(cmd_ar)
>  
>  $(obj)/lib.a: $(lib-y) FORCE
> -	$(call if_changed,ar_lib)
> +	$(call if_changed,ar)
>  
>  ifneq ($(CONFIG_LTO_CLANG)$(CONFIG_X86_KERNEL_IBT),)
>  quiet_cmd_link_multi-m = AR [M]  $@
>  cmd_link_multi-m =						\
> -	$(cmd_update_lto_symversions);				\
>  	rm -f $@; 						\
>  	$(AR) cDPrsT $@ @$(patsubst %.o,%.mod,$@)
>  else
> diff --git a/scripts/link-vmlinux.sh b/scripts/link-vmlinux.sh
> index 2742b7dd089a..07333181938b 100755
> --- a/scripts/link-vmlinux.sh
> +++ b/scripts/link-vmlinux.sh
> @@ -56,20 +56,6 @@ gen_initcalls()
>  		> .tmp_initcalls.lds
>  }
>  
> -# If CONFIG_LTO_CLANG is selected, collect generated symbol versions into
> -# .tmp_symversions.lds
> -gen_symversions()
> -{
> -	info GEN .tmp_symversions.lds
> -	rm -f .tmp_symversions.lds
> -
> -	for o in ${KBUILD_VMLINUX_OBJS} ${KBUILD_VMLINUX_LIBS}; do
> -		if [ -f ${o}.symversions ]; then
> -			cat ${o}.symversions >> .tmp_symversions.lds
> -		fi
> -	done
> -}
> -
>  # Link of vmlinux.o used for section mismatch analysis
>  # ${1} output file
>  modpost_link()
> @@ -299,7 +285,6 @@ cleanup()
>  	rm -f .btf.*
>  	rm -f .tmp_System.map
>  	rm -f .tmp_initcalls.lds
> -	rm -f .tmp_symversions.lds
>  	rm -f .tmp_vmlinux*
>  	rm -f System.map
>  	rm -f vmlinux
> -- 
> 2.32.0

Reviewed-by: Nicolas Schier <nicolas@fjasle.eu>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YnQxXsVKDZwj9ML7%40fjasle.eu.
