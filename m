Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBK754KAQMGQE73EYB7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 24F50325FF6
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 10:26:04 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id l15sf4583069otp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 26 Feb 2021 01:26:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614331563; cv=pass;
        d=google.com; s=arc-20160816;
        b=BEEtMo4z8n9AvNeI6r9rT/e9eqZ88our42S4/LF2HK9qMDlW7fSeZGn0BHw/d5Q4Fg
         bEQbW5DJcrzIhODwXgJZ0gDjOME0zmhrkgg+B5NGSO8z8xzKwGYZSVLM2WqcBtYxixsu
         LOrPymA5+GfDNszz03nzT3JW5AUVi8NcaFTYEhn3bMhPRwAY/drUhASBqO1qMleHYFcA
         ryP2bLUBRp4bRP/o8hv4x8tDcSy/uwuNZ0cq1W/2pbzOL+Oqmz91B3NpcX00G4NBCECr
         4V+GeSMIcozmEK7oq2EJl04xUfR5I/5SbPrTFnjOFKSrIr9seI4quIuf7GW70OQdl0EK
         d64A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3yhLyNdwvSJ58OFfFNolN3jcniceEQiGsv73syKGLNQ=;
        b=fLdJT5QcgOtuN/YHTD8/swATTC4SH75JQxqXYmK8Qtwqcfz2lZqYc9VYX9hi6U3GEs
         7pq7vr8c2BcrmkkdREUeOdcw3KzxwpBUMvh4qZelKDfKSx2uSM3ypJ1+TOqopdab0P1T
         fl0OdUGAJHFSyHi1hV/xhMwOelH8iRxvIROua8e9kJ4QA2AZ2TOgBpoSkoMIHlM+gTDf
         61XghDcfYYEXeRrxwNvoBKUW9assoye1BYQ58CMxk6nzncn8nKmrOXCmp76pnomj5N6Q
         YqDrOT4uvdWi/xVPRANRonohevl6kVUbi/Vk2jFk+7xm6mowNyAeVYi8IwvPU9N86JFt
         mEfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=twcv2ssX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3yhLyNdwvSJ58OFfFNolN3jcniceEQiGsv73syKGLNQ=;
        b=WQMqIasTuc9Gt8WXepccibCpngcBCaDLJJNbxFkWcrzdOh+QsheZCVyPX8OoaoqRw5
         NEDoBCX3Gs8samkhvqdXO5sqhTAvsPK8dwy7eORumcxKB9yc5E82B+j44n/W5lJz19wj
         mzqnJY7zF/8IhUOYa3lFSRLlkR3q8TbtVi8LQgVN39y4iy3AnFDBSKC8U9hJROc1ZZNU
         HEzU8TIVk879dgKqc0v4poSaeUOLeJZOpHMMvpun1F7FS9mWTKulJqKTficFUTGN3KAw
         5eBJRWC2ZkBKKq4OIpoyWxb5WQ9b16FY8dqKH5nYJf3nIlM0H+9t56vwN52ipSCBcYu3
         Fwww==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3yhLyNdwvSJ58OFfFNolN3jcniceEQiGsv73syKGLNQ=;
        b=gUJ/Hw5vod2Ps1byojEBBJC4xcSu0ShPD7MPIzUjXtYu/0akRqBRC9hUxE2cvPHSKW
         Br5XoXATCHa19j0ENieEneZYHKhyqktGvgT1f/QvSaCS79sMqXvfGejt3WeulYf3xfEM
         oYhO5iJQ4mTU8bUFiCIGFwQ8EqvCn6Zxsm91mthWCbSnm88eVJYqtI7dN4YBtowp8vDb
         +Hy/lwKE1nnWoSt9+a9I3WNZ2hlWEfD0ZXMcE3Vus2mUi88N692L2vV5UiwJ5HYc3zjJ
         TF1Rfb3s723b5ggAZsiXX2NKFbx+3e5+by4VJXmt01+eS3PLJXqUF8FZAeNr0R33jUZ6
         Bkkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3yhLyNdwvSJ58OFfFNolN3jcniceEQiGsv73syKGLNQ=;
        b=tTfsitwkcdEi3PulfT4wLaPKP/mkh0s5q5W757hsC7NMfRASje01Id8/B2a2WTZp7p
         Da3P0G4zx7SFqKPvShFmgkoupMYyEeXcLEm82/HFfTeIdFznLJ8DEIA7kZ+xFpreky3e
         8nmAQfUl9z1qAmen2HlzCewu315j6K089NIby/6Cc4rYkbVSTi1pfnTOwo1qHi60XKS1
         uJftXFCGugdiUPyt3GlWZMC3+/ZKoAtINWXVjHIkP2EyZmXSxcjZVUW//YmkRlrfr45W
         206RM3nC4WrRogAibE6z8Low96ss/BYVweUXii/FR9uyLWADuynrezeAtqjdo11qAzdc
         BvSg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304jhJ278QLw88Ex4atuLjiwjJ3LUJHDeMTogWpPJ9KFMluoPEF
	xhwrZBliT+GigkpMqtO1asQ=
X-Google-Smtp-Source: ABdhPJzYBu3jFEt9Yw1xOX1gtSrtZDy/Sp3uNfKrczwffO0tOUXI+vH2iK6OSfFijcQyEoH55XzcOQ==
X-Received: by 2002:a9d:6d8a:: with SMTP id x10mr1606589otp.339.1614331563189;
        Fri, 26 Feb 2021 01:26:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls2168656oif.10.gmail; Fri, 26
 Feb 2021 01:26:02 -0800 (PST)
X-Received: by 2002:a05:6808:148f:: with SMTP id e15mr1493622oiw.120.1614331562805;
        Fri, 26 Feb 2021 01:26:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614331562; cv=none;
        d=google.com; s=arc-20160816;
        b=J6fte5zRK8cZcXMtwPVgwCMHAcHAz+qrb1Ud4YlD5FctBRipW6pPjedSPhYzEALzW6
         NwWnjEpdA5UEsHI2A81xWkH/Obg+Cnds9bOzAbMgsY5JfK7LDuSeBfQ6ItSnYLaTKKwx
         z1XQEY0f/8JXW6uO3g7u2OeIwCP+GVH2Kta5aF9/2rcELBmGB4DWtu9k29GizFcMe0ub
         xDONGtOZd2hkuh5AbNlC2bOB0aCHgBKDn5AQB+fF5/DdJJMQfS8T9vN837sOFBXkqn+9
         MOkRDvK/pUraCctMeWK9oO5ocxf3E/hg/ZyRrJ+PHRA01oU2F1ySeLwmdqXm0+hBnhz4
         3BEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=zYcif3lRZCjOeSRt7zkTKeI8391Ir8d0NUzmRV348z0=;
        b=E6IwuFoEzZvhQ6XakjCoVQM3zJGc4vSMxoVsK5h5LaH76Pig7tW1MZrJavQudKEOgp
         SP9LLxrNj6xQsW/+y4m9jUSJYmPVkHuCsWjwOSGNa7YS6PcS8T5zfwjwYMmyow1Yunbb
         UmiPVXJkbsrAzrWH6la8jAoJBfmqgpYTiD5n9BVkVYsWqRKcOPCuCdZn8udm1UpjaCmT
         ptzdbk6QlHOQTdlkpwfobEktNsWRr5h/tYl/bRdgoumIm5BnLCsS/HjWgyixjzgfDNnN
         UAl8JfTDxrKhHf7tnSyqxGNlBVhpkhTPPuXXwHutOUk4cV6plrrPiR+OK3VoORCyz73Q
         R/kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=twcv2ssX;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2a.google.com (mail-io1-xd2a.google.com. [2607:f8b0:4864:20::d2a])
        by gmr-mx.google.com with ESMTPS id v26si29017otn.1.2021.02.26.01.26.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 26 Feb 2021 01:26:02 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a as permitted sender) client-ip=2607:f8b0:4864:20::d2a;
Received: by mail-io1-xd2a.google.com with SMTP id e2so5691775iog.0
        for <clang-built-linux@googlegroups.com>; Fri, 26 Feb 2021 01:26:02 -0800 (PST)
X-Received: by 2002:a5e:c10b:: with SMTP id v11mr2059128iol.75.1614331562170;
 Fri, 26 Feb 2021 01:26:02 -0800 (PST)
MIME-Version: 1.0
References: <20210226062548.3334081-1-masahiroy@kernel.org>
In-Reply-To: <20210226062548.3334081-1-masahiroy@kernel.org>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 26 Feb 2021 10:25:50 +0100
Message-ID: <CA+icZUXYLVjs-hXEu_5Vy=TdNvOHhyiXe=hc-jc7SAU04Dtstw@mail.gmail.com>
Subject: Re: [PATCH v2] kbuild: fix UNUSED_KSYMS_WHITELIST for Clang LTO
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>, 
	linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>, 
	Kees Cook <keescook@chromium.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=twcv2ssX;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2a
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Feb 26, 2021 at 7:26 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Commit fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> does not work as expected if the .config file has already specified
> CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list" before enabling
> CONFIG_LTO_CLANG.
>
> So, the user-supplied whitelist and LTO-specific white list must be
> independent of each other.
>
> I refactored the shell script so CONFIG_MODVERSIONS and CONFIG_CLANG_LTO
> handle whitelists in the same way.
>
> Fixes: fbe078d397b4 ("kbuild: lto: add a default list of used symbols")
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
> ---
>
> Changes in v2:
>   - Rebase on top of Arnd's patch:
>     https://lore.kernel.org/lkml/20210225143456.3829513-1-arnd@kernel.org/
>
>  init/Kconfig                    |  1 -
>  scripts/gen_autoksyms.sh        | 35 ++++++++++++++++++++++++---------
>  scripts/lto-used-symbollist.txt |  6 ------

People who want to use their own "white-listed" (allow-listed)
symbollist-file can do that via
CONFIG_UNUSED_KSYMS_WHITELIST="my/own/white/list".
Correct?

Why do you delete the default "scripts/lto-used-symbollist.txt" file
and remove the default in the appropriate Kconfig for people who want
to enable Clang-(Thin)LTO?
These people should now use
CONFIG_UNUSED_KSYMS_WHITELIST="scripts/lto-used-symbollist.txt"?
But again - the file was deleted with your patch.
Do I miss something?

- Sedat -

>  3 files changed, 26 insertions(+), 16 deletions(-)
>  delete mode 100644 scripts/lto-used-symbollist.txt
>
> diff --git a/init/Kconfig b/init/Kconfig
> index 719871f8727c..64c32300d1b4 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -2283,7 +2283,6 @@ config TRIM_UNUSED_KSYMS
>  config UNUSED_KSYMS_WHITELIST
>         string "Whitelist of symbols to keep in ksymtab"
>         depends on TRIM_UNUSED_KSYMS
> -       default "scripts/lto-used-symbollist.txt" if LTO_CLANG
>         help
>           By default, all unused exported symbols will be un-exported from the
>           build when TRIM_UNUSED_KSYMS is selected.
> diff --git a/scripts/gen_autoksyms.sh b/scripts/gen_autoksyms.sh
> index d54dfba15bf2..da320151e7c3 100755
> --- a/scripts/gen_autoksyms.sh
> +++ b/scripts/gen_autoksyms.sh
> @@ -19,7 +19,26 @@ esac
>  # We need access to CONFIG_ symbols
>  . include/config/auto.conf
>
> -ksym_wl=/dev/null
> +needed_symbols=
> +
> +# Special case for modversions (see modpost.c)
> +if [ -n "$CONFIG_MODVERSIONS" ]; then
> +       needed_symbols="$needed_symbols module_layout"
> +fi
> +
> +# With CONFIG_LTO_CLANG, LLVM bitcode has not yet been compiled into a binary
> +# when the .mod files are generated, which means they don't yet contain
> +# references to certain symbols that will be present in the final binaries.
> +if [ -n "$CONFIG_LTO_CLANG" ]; then
> +       # intrinsic functions
> +       needed_symbols="$needed_symbols memcpy memmove memset"
> +       # ftrace
> +       needed_symbols="$needed_symbols _mcount"
> +       # stack protector symbols
> +       needed_symbols="$needed_symbols __stack_chk_fail __stack_chk_guard"
> +fi
> +
> +ksym_wl=
>  if [ -n "$CONFIG_UNUSED_KSYMS_WHITELIST" ]; then
>         # Use 'eval' to expand the whitelist path and check if it is relative
>         eval ksym_wl="$CONFIG_UNUSED_KSYMS_WHITELIST"
> @@ -40,16 +59,14 @@ cat > "$output_file" << EOT
>  EOT
>
>  [ -f modules.order ] && modlist=modules.order || modlist=/dev/null
> -sed 's/ko$/mod/' $modlist |
> -xargs -n1 sed -n -e '2{s/ /\n/g;/^$/!p;}' -- |
> -cat - "$ksym_wl" |
> +
> +{
> +       sed 's/ko$/mod/' $modlist | xargs -n1 sed -n -e '2p'
> +       echo "$needed_symbols"
> +       [ -n "$ksym_wl" ] && cat "$ksym_wl"
> +} | sed -e 's/ /\n/g' | sed -n -e '/^$/!p' |
>  # Remove the dot prefix for ppc64; symbol names with a dot (.) hold entry
>  # point addresses.
>  sed -e 's/^\.//' |
>  sort -u |
>  sed -e 's/\(.*\)/#define __KSYM_\1 1/' >> "$output_file"
> -
> -# Special case for modversions (see modpost.c)
> -if [ -n "$CONFIG_MODVERSIONS" ]; then
> -       echo "#define __KSYM_module_layout 1" >> "$output_file"
> -fi
> diff --git a/scripts/lto-used-symbollist.txt b/scripts/lto-used-symbollist.txt
> deleted file mode 100644
> index 406ada65e926..000000000000
> --- a/scripts/lto-used-symbollist.txt
> +++ /dev/null
> @@ -1,6 +0,0 @@
> -memcpy
> -memmove
> -memset
> -_mcount
> -__stack_chk_fail
> -__stack_chk_guard
> --
> 2.27.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210226062548.3334081-1-masahiroy%40kernel.org.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXYLVjs-hXEu_5Vy%3DTdNvOHhyiXe%3Dhc-jc7SAU04Dtstw%40mail.gmail.com.
