Return-Path: <clang-built-linux+bncBDE5JTGNZULRBREJ3TXAKGQEJUAUKOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4228C105C27
	for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 22:42:30 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id z3sf2921319pfk.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 21 Nov 2019 13:42:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574372548; cv=pass;
        d=google.com; s=arc-20160816;
        b=w8oHePHLUoYBTzUYBtQMyFV/doFtNLroMxp+4eKkqr4T10otachBRQQrPE6sYXi+71
         nUYDC5sMEJZlx7h3em1ZtcGhePnyX8t3l6FrN3J0j+s4w+pkLHzLOuQJJFALAkT3Ddsw
         uA1RugwjVfWrMRis6+jqE6DPYTNE9ZRreOBTb9FeAI++6T0cQ2uqznYEDxeKmlE0X2sl
         B8Gqp+IuXpj1hk4ttlCJFLjwNbEb9aY9/6OAu8ZPZmsqcmy7EPpJ/vSb6je/u1QObs2E
         X6l0zM9MgXecYjtWkwBUJZV50lhrEeb/Mj//mKiZlrGAdfA9vYyiTBFZYCBjrCzbdlNY
         c2KA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=3NBOqNm03eF8ushaYnsx1k0SDUsWqdNkdeNREvF3pK0=;
        b=ZuJikmnL6pLiw83HYlbIZvTQGUlJ1YFHu6EttZXJk00MTImjnV8+hJxIrkR2zoLfDD
         DALpK822chBy5dkx9w+1HYltY1yZLdTS6e8pF8iWW0ar3hKYIe8OGenKE8tkRKLHk6bB
         YE1nhP7ZzEtHEsnadIiEFoClYCjQASUiuCwcEQQeU/a8OPOvGHJc/fwp6y20c4HGNaor
         UhzhcjIF0pFoBxJR6/fpRm9riYWhALovnderB4h5tjV8h5plw7+YJq1icnc7QCvdmAUZ
         U0T60TNE7nN4D2dD+Blm7X7g/CwxK50bvo2y+srTrGe79kMBOrnbcMnZadCTonmgUa/V
         j84w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=NzfzBTFL;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3NBOqNm03eF8ushaYnsx1k0SDUsWqdNkdeNREvF3pK0=;
        b=kgRWEBUn3S1WOBO4xNfyy/5RLOMeqWP2dKUhA5r8PMYl7JE3X1G1x20W3i061r93eR
         USZi5uDZFA3muUZJATjuqqN8b5EBG+NZMFazgh8txeHWH40v/R0T1VI2dJ5LaBxrzv0m
         McMGI/Bf8rOmXXQdR4FZZjrOG9GO8J041RrdRkv7iH3GS3yoLta8UYjeD4of9o68NwbR
         9+fumQGZgR3oEQiI9yr0LSwwQYmrBXw+Z2RkgXG9P3D57A06M7rY8xCHi4degQdf1EKz
         BpZmWJHz4xajVmRyfMgoGAVObDBhPbNNb+JSaZ5pIYmOhKfp4lVCA9OknncI+SE5QMqL
         KUOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3NBOqNm03eF8ushaYnsx1k0SDUsWqdNkdeNREvF3pK0=;
        b=GRI6WMb+0FcF97ROwyM9RiEObPBFJe/dtXgPI1eOYtPRU2jfHZvO5w16OPPD5Ug0Nw
         GTpFcM9/i0f8+RmqpwiXQbw6ICxbYxdWy7JoW5wXjbVxH9J1xN9eDqr5GMemdfcxmcAU
         PifPcZIERVlIzxFmAbfp/U8IA+K1RACaN34xBP/0Z+Btl4cvYSn9qK2bB92jU/fG3NUr
         VX2jJsH98lJKc4nRokYMx5hb33V3ofK2QjNIB2HxfOrplQgPzeXvN+hcv31qLtdhJYhO
         7RXHx16cnPEdvD8hFs33k93grBmc4L/oo3ADncElYFaHMnehE4b0gcRQP302bhGZhWuN
         rklQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWpr9LzhZQYsWMODUkx+hpIHx+xOFlG3izuIuw+On4Slcn12Bxk
	ExXZCyp3Hw3CVy5YcruAqQk=
X-Google-Smtp-Source: APXvYqxJXFCXtOnx25/3iI7jrOdSsYnRgRqmKSwaOJFUaybGv0mh9kt9qRnTJIlAPDplgx84lM4eoA==
X-Received: by 2002:a62:7553:: with SMTP id q80mr13929684pfc.203.1574372548731;
        Thu, 21 Nov 2019 13:42:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:7904:: with SMTP id u4ls1113744pgc.0.gmail; Thu, 21 Nov
 2019 13:42:28 -0800 (PST)
X-Received: by 2002:a63:1624:: with SMTP id w36mr11203345pgl.404.1574372548122;
        Thu, 21 Nov 2019 13:42:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574372548; cv=none;
        d=google.com; s=arc-20160816;
        b=x72xqaZ6bLKL1YwiacWSom8sCH/TQALh7bZvTi2FtEOWHgwscG+qSyrl1i8dM3f/dZ
         IfT5rqYm4IlBQ8lDcLnAV7gJ+OKAuazrjLSo64bBZJPiLhjcg6O9la+N30jG3SnC3lTC
         uIDJHAdFcI8GbTFjpX0OOFS0mlwWIsUZXDVNHp5zTOxUvwreJTVI+EzLA+v7Yfzq7TrE
         rgyc7CzOT/Po4gDCgrhVpcQvOKh/oD4SWV2R7rFXskt15O/wGOZ1zWtZXJfCOY3yVuLF
         9EZtnwzEyjMC2fqUOaWoay3q2eLELl7BIQvo1ZPPhga9ca5p3GpP+34NhGBNi/7TJGPM
         ObFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=t6UbFd+jsoBUib7qTx+BJ7svX081NKhXcR40/0W3LxE=;
        b=Mfem+2cHkBEKM3KkWY8ocl04JnzNtMZo5xXNcHqixd1B8sfGziSKg1RXJHC8wqjcg+
         MyQG9Gd08Wsrpo9S0f4X0iISiSHZzam81j8yzppHoHGFMGz/LDKx9Tv2+WX0uVHqibqh
         dwJhY8PRsYf9LzlXQRCwMAJHHQIIIl23Ybbsftf1j7LTmoweejDbeMj9KR/lrvVh98BJ
         YoJSYOWKGPSRNgpDH+yZyigAM1kgD+CKTSdIpghB87K4eu/yMoColuowEtXS459J2Izo
         ewISMXsyePgqCaHMbA0L8FLVU+9djMKzjk4KALbE4iHpPCTpR4/yw0DIiN2Nrb1MIOTO
         fIOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623 header.b=NzfzBTFL;
       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id 62si159323pld.2.2019.11.21.13.42.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Nov 2019 13:42:27 -0800 (PST)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::1043 is neither permitted nor denied by best guess record for domain of sdf@fomichev.me) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id y21so2094770pjn.9
        for <clang-built-linux@googlegroups.com>; Thu, 21 Nov 2019 13:42:27 -0800 (PST)
X-Received: by 2002:a17:902:854c:: with SMTP id d12mr6529877plo.264.1574372547563;
        Thu, 21 Nov 2019 13:42:27 -0800 (PST)
Received: from localhost ([2601:646:8f00:18d9:d0fa:7a4b:764f:de48])
        by smtp.gmail.com with ESMTPSA id 6sm4768899pfy.43.2019.11.21.13.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Nov 2019 13:42:25 -0800 (PST)
Date: Thu, 21 Nov 2019 13:42:25 -0800
From: Stanislav Fomichev <sdf@fomichev.me>
To: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
Cc: ast@kernel.org, daniel@iogearbox.net, yhs@fb.com, davem@davemloft.net,
	jakub.kicinski@netronome.com, hawk@kernel.org,
	john.fastabend@gmail.com, linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org, bpf@vger.kernel.org,
	clang-built-linux@googlegroups.com, ilias.apalodimas@linaro.org,
	sergei.shtylyov@cogentembedded.com, andriin@fb.com
Subject: Re: [PATCH v5 bpf-next 11/15] libbpf: don't use cxx to test_libpf
 target
Message-ID: <20191121214225.GA3145429@mini-arch.hsd1.ca.comcast.net>
References: <20191011002808.28206-1-ivan.khoronzhuk@linaro.org>
 <20191011002808.28206-12-ivan.khoronzhuk@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20191011002808.28206-12-ivan.khoronzhuk@linaro.org>
User-Agent: Mutt/1.12.2 (2019-09-21)
X-Original-Sender: sdf@fomichev.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@fomichev-me.20150623.gappssmtp.com header.s=20150623
 header.b=NzfzBTFL;       spf=neutral (google.com: 2607:f8b0:4864:20::1043 is
 neither permitted nor denied by best guess record for domain of
 sdf@fomichev.me) smtp.mailfrom=sdf@fomichev.me
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

On 10/11, Ivan Khoronzhuk wrote:
> No need to use C++ for test_libbpf target when libbpf is on C and it
> can be tested with C, after this change the CXXFLAGS in makefiles can
> be avoided, at least in bpf samples, when sysroot is used, passing
> same C/LDFLAGS as for lib.
> 
> Add "return 0" in test_libbpf to avoid warn, but also remove spaces at
> start of the lines to keep same style and avoid warns while apply.
Hey, just spotted this patch, not sure how it slipped through.
The c++ test was there to make sure libbpf can be included and
linked against c++ code (i.e. libbpf headers don't have some c++
keywords/etc).

Any particular reason you were not happy with it? Can we revert it
back to c++ and fix your use-case instead? Alternatively, we can just
remove this test if we don't really care about c++.

> Acked-by: Andrii Nakryiko <andriin@fb.com>
> Signed-off-by: Ivan Khoronzhuk <ivan.khoronzhuk@linaro.org>
> ---
>  tools/lib/bpf/Makefile                         | 18 +++++-------------
>  .../lib/bpf/{test_libbpf.cpp => test_libbpf.c} | 14 ++++++++------
>  2 files changed, 13 insertions(+), 19 deletions(-)
>  rename tools/lib/bpf/{test_libbpf.cpp => test_libbpf.c} (61%)
> 
> diff --git a/tools/lib/bpf/Makefile b/tools/lib/bpf/Makefile
> index 1270955e4845..46280b5ad48d 100644
> --- a/tools/lib/bpf/Makefile
> +++ b/tools/lib/bpf/Makefile
> @@ -52,7 +52,7 @@ ifndef VERBOSE
>  endif
>  
>  FEATURE_USER = .libbpf
> -FEATURE_TESTS = libelf libelf-mmap bpf reallocarray cxx
> +FEATURE_TESTS = libelf libelf-mmap bpf reallocarray
>  FEATURE_DISPLAY = libelf bpf
>  
>  INCLUDES = -I. -I$(srctree)/tools/include -I$(srctree)/tools/arch/$(ARCH)/include/uapi -I$(srctree)/tools/include/uapi
> @@ -142,15 +142,7 @@ GLOBAL_SYM_COUNT = $(shell readelf -s --wide $(BPF_IN) | \
>  VERSIONED_SYM_COUNT = $(shell readelf -s --wide $(OUTPUT)libbpf.so | \
>  			      grep -Eo '[^ ]+@LIBBPF_' | cut -d@ -f1 | sort -u | wc -l)
>  
> -CMD_TARGETS = $(LIB_TARGET) $(PC_FILE)
> -
> -CXX_TEST_TARGET = $(OUTPUT)test_libbpf
> -
> -ifeq ($(feature-cxx), 1)
> -	CMD_TARGETS += $(CXX_TEST_TARGET)
> -endif
> -
> -TARGETS = $(CMD_TARGETS)
> +CMD_TARGETS = $(LIB_TARGET) $(PC_FILE) $(OUTPUT)test_libbpf
>  
>  all: fixdep
>  	$(Q)$(MAKE) all_cmd
> @@ -190,8 +182,8 @@ $(OUTPUT)libbpf.so.$(LIBBPF_VERSION): $(BPF_IN)
>  $(OUTPUT)libbpf.a: $(BPF_IN)
>  	$(QUIET_LINK)$(RM) $@; $(AR) rcs $@ $^
>  
> -$(OUTPUT)test_libbpf: test_libbpf.cpp $(OUTPUT)libbpf.a
> -	$(QUIET_LINK)$(CXX) $(INCLUDES) $^ -lelf -o $@
> +$(OUTPUT)test_libbpf: test_libbpf.c $(OUTPUT)libbpf.a
> +	$(QUIET_LINK)$(CC) $(INCLUDES) $^ -lelf -o $@
>  
>  $(OUTPUT)libbpf.pc:
>  	$(QUIET_GEN)sed -e "s|@PREFIX@|$(prefix)|" \
> @@ -266,7 +258,7 @@ config-clean:
>  	$(Q)$(MAKE) -C $(srctree)/tools/build/feature/ clean >/dev/null
>  
>  clean:
> -	$(call QUIET_CLEAN, libbpf) $(RM) $(TARGETS) $(CXX_TEST_TARGET) \
> +	$(call QUIET_CLEAN, libbpf) $(RM) $(CMD_TARGETS) \
>  		*.o *~ *.a *.so *.so.$(LIBBPF_MAJOR_VERSION) .*.d .*.cmd \
>  		*.pc LIBBPF-CFLAGS bpf_helper_defs.h
>  	$(call QUIET_CLEAN, core-gen) $(RM) $(OUTPUT)FEATURE-DUMP.libbpf
> diff --git a/tools/lib/bpf/test_libbpf.cpp b/tools/lib/bpf/test_libbpf.c
> similarity index 61%
> rename from tools/lib/bpf/test_libbpf.cpp
> rename to tools/lib/bpf/test_libbpf.c
> index fc134873bb6d..f0eb2727b766 100644
> --- a/tools/lib/bpf/test_libbpf.cpp
> +++ b/tools/lib/bpf/test_libbpf.c
> @@ -7,12 +7,14 @@
>  
>  int main(int argc, char *argv[])
>  {
> -    /* libbpf.h */
> -    libbpf_set_print(NULL);
> +	/* libbpf.h */
> +	libbpf_set_print(NULL);
>  
> -    /* bpf.h */
> -    bpf_prog_get_fd_by_id(0);
> +	/* bpf.h */
> +	bpf_prog_get_fd_by_id(0);
>  
> -    /* btf.h */
> -    btf__new(NULL, 0);
> +	/* btf.h */
> +	btf__new(NULL, 0);
> +
> +	return 0;
>  }
> -- 
> 2.17.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191121214225.GA3145429%40mini-arch.hsd1.ca.comcast.net.
