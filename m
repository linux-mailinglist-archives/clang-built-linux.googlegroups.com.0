Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBB6OYX5AKGQEX7WOB3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB5725CCEF
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 23:58:32 +0200 (CEST)
Received: by mail-pj1-x103c.google.com with SMTP id n19sf2273708pjt.1
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 14:58:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599170311; cv=pass;
        d=google.com; s=arc-20160816;
        b=gAtIJHirZY5Fcpei1tZFhoAFR2x82+HaEruCnGzBFiCcnLkP1SggsHkOQYJnycjwdl
         net/WO//86dRI7cIP5SpB3ZaIubox2Qm79fkKuSaaAdbON8fps2AAZl58Us7t5+vG5Rs
         k98EIYKnQ1ZF6dAuZTNhknv6e93iww9sccbUgdcaFkxsya2c9s8OLD8R2AqJSWK/3RQ3
         Hpr0JVQI6+Tr2g+PUWreIEHpbKdw7PGZ+sZDOb4WfgMVubPdVz0KOOv9WIK0PkajsmOj
         C6hoP313R0ELeC4rzeCz865cN66CQSWSOXrmMwSGZ9/gu1mJNBmroOYkHRhwXljEzGQT
         8n5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=YTlM5qxJy58c8AHx1RdSWbri8YuNXJVklWGVkWjrYgs=;
        b=UqDnLY4G+bYik+O0LYaFY8d8jd6H5+uj9KvgO0w0xgOgwCsBEZbL3MLgVMBUBbg+oc
         ueZ1L2CTFccvzRn22QiZ9i4rGynV7GvGlY1CTmhUofuSPUYW209UKOeCO9xSfItD7+FR
         wrtKH61Fi9LbbXmz04Iv2QfQmfDKca1Mp4J3G1HsDMetrXbXHDNV2Ld6Ii8I03oIndgG
         5omJDBxxjk6cybyO5nXNZBPS4BnxfG9hNRcdj9EnhJkecrqtANpQXbeoo88uDIQi4fzJ
         BTDmaGBJIZseQQfxomz3AWzQoD11Ti5MK56ZpOjFdNq+zrGf7UX53eIueswO/MHLyfHW
         RMag==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cfK1czkM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YTlM5qxJy58c8AHx1RdSWbri8YuNXJVklWGVkWjrYgs=;
        b=c64zxSMFJBtfehIMGs9hNFwiwOe1TsiLbbjo6aqdj9OW89IzWep1MTq86rvZ4N6Pv+
         eEXS5zKy59lriaaVZxcAhAC88Dsza6nbKPHzQb41TtUFKzCBbJlK+UyzyRlYvsoTd5Zk
         l8GpFlFCa03Ui+yJ5yFiOx+NG0XaHEfRF6DtasNjjf9mLhwN4kywtlHwKuS3C37xd4hT
         TJvLBr8eStarfw6dFku4voeWrYdvvUzsuqUuUbhThjuenBhrOvXE1Ih4I1mQoOOd1WD1
         81I4k9GKu7xZkHQok4nkITaKYyM1R2yik36yNDg2q6FVFvsgQZ2QiUAK1S3Fe5sfPZv3
         H4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YTlM5qxJy58c8AHx1RdSWbri8YuNXJVklWGVkWjrYgs=;
        b=rvV+HE4b9w3Ago9mQe+QpUxkwGpp1Uyf+JS1dB4MrzW4AuathWdKOJhhgjkTJt+fDZ
         WrxUtDqFvWot9pAQNnBvrrLvrl9m7Uld2xeS8nYXTp6n7QXC3ouO9GkTxVxF6Hr4FoR4
         gXSOgpp3V3ObPh/OUTZTebDZcDu6x4iQn1S+wYTFNWxYka2RMnW+5rZgiUCUUFA4Hm9t
         ISPvxn6spiYajDY4UOPbjzJ1GBEA3X2Msb6WxIWxJp6v/g2CQqBEm8kxtisIwl3YZZSm
         FVuXhgpRFShvwRc8FW733fGA57wszN6a+ywZVmOUE2gUxJMkdHlYKadfIYko+G5sLqUB
         Iy6g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ooVzkPyRrcYbPhmMuiIO/rD99rF3YS3XQbbzsA5OsJmI2qM8o
	ILJAb3arbsZew+n+iH+LG6I=
X-Google-Smtp-Source: ABdhPJzvouz5JYfOO7PuLxZ5oxw3cf1CwZBGQU1ule5IeGJ2jgAa+AchlKuKq8jV5NLh/zlX3hYxFg==
X-Received: by 2002:a17:90a:9307:: with SMTP id p7mr5224711pjo.105.1599170311186;
        Thu, 03 Sep 2020 14:58:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:142:: with SMTP id 60ls3588536plb.9.gmail; Thu, 03
 Sep 2020 14:58:30 -0700 (PDT)
X-Received: by 2002:a17:90a:e512:: with SMTP id t18mr5175295pjy.141.1599170310679;
        Thu, 03 Sep 2020 14:58:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599170310; cv=none;
        d=google.com; s=arc-20160816;
        b=ZDBiXVn7SyffB84fGPdgKpzbX/rnlCIM8zs07cKT4ImyoJXI/LOXuZ/+20semsAyVE
         VDGgxbazK4wiIfwInakHbtkyMHPbi2oNS8CiLPRiRCUTVObjO5qb5YHuEAmXq7pbQ8S9
         dp+yoB87st45faqLT9nZRSXtlTXTxmRlHpUUgSYk86OuLA3XV/nTCBZ+fmDMlYxXtJNB
         UxzW2Lh2hWC+K5Mm8TvaDueA8TGoAN28FKWpXAZwhamk5bqVf+YdJ1SQfzn/ITd6gisE
         ywveesE9DFlRrWPhXP5jr4uCfjLI/JzRpS10877XWgJL6Wy60fGS3Cwj+33QqNXQmo+n
         2bhg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=zwlTSlngv7hk/k8joOBYJecRtutX3pQhWGRYHaQfHNc=;
        b=o6S8bpC/34yos3BcDDdmL16XtDlX3oTF03BtKWQWcFcjkKX36leVmCrucWMcPIWFnx
         KoCHex9D+CuGn3YEXyjHvL2/9MoCtyyHsAJRpD97jZCA5WnyxDQoi38nXSf1FgyHj7Di
         5CsfNkPIJ9Ob6p6Wz1EzmMVbcUooOpiMgEC8LAM/qGB4YSH3v40piYLe95K6WD89KfQK
         +gvILIRpbfyjZJ5oBPQVbIVpl0jL6up9oaojEZSxDomwXKHTsVYO3/S/wmKcOOswnOvw
         imjZ1v6oMZ5iWQ2rwgdUgmL+vX8UC78sjw8J6k4I1bE3W43Z/VpVfhvEQLPaImPTD+tN
         5odw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=cfK1czkM;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id s2si223169pgh.4.2020.09.03.14.58.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 14:58:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id 5so3198741pgl.4
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 14:58:30 -0700 (PDT)
X-Received: by 2002:a63:d70f:: with SMTP id d15mr4658855pgg.354.1599170310450;
        Thu, 03 Sep 2020 14:58:30 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id s198sm3638905pgc.4.2020.09.03.14.58.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 14:58:29 -0700 (PDT)
Date: Thu, 3 Sep 2020 14:58:28 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 08/28] x86, build: use objtool mcount
Message-ID: <202009031456.C058EC4@keescook>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-9-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200903203053.3411268-9-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=cfK1czkM;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
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

On Thu, Sep 03, 2020 at 01:30:33PM -0700, Sami Tolvanen wrote:
> Select HAVE_OBJTOOL_MCOUNT if STACK_VALIDATION is selected to use
> objtool to generate __mcount_loc sections for dynamic ftrace with
> Clang and gcc <5.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>

Am I right to understand that this fixes mcount for Clang generally
(i.e. it's not _strictly_ related to LTO, though LTO depends on this
change)? And does this mean mcount was working for gcc < 5?

Reviewed-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009031456.C058EC4%40keescook.
