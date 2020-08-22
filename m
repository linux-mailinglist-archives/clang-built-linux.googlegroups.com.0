Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXWQQH5AKGQEUO4F6GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 60AC224E427
	for <lists+clang-built-linux@lfdr.de>; Sat, 22 Aug 2020 02:35:44 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id o9sf1883668pjg.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 17:35:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598056543; cv=pass;
        d=google.com; s=arc-20160816;
        b=O4DF6aSdWCYMT6JP+y6oDgjWQUpYcJrIS9G6OBWCDavk7W5T982Nopm1+gAZQd5hFA
         d8XLdIGtgw4tFfYTUXBcLA7PVXxTaNTLUfZh6zXyyRpgKgIVjuZee5ZSLVqBz0z7frQy
         RaMHdnr8hSP1tM4SEw+uk4ogc9Xi3qixNiHTK9TxjdVZEPMoJyD7aYsF6qqdWUJP8MLe
         yBp/cnHtVR0zcWhY+JJxLIuPJ0K3DINobYRbxx48N4uQFZIRuzVl+Ny13ZqjeioNIKUe
         bhrY9ctCzYUp5Vet8qD1fDCKUinLIDDCWhLGdkJ7jT3qzVq/6ykT74NTzbMCwNyldb6o
         Pzkw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=OqWctCWYmlrd00Hi9Tu+3n04cAAsg2Tr2GQW91LDq9U=;
        b=mwsQ6YTc7d+2kmjQ6zncEDeWGzpm2TjfbxwnMGrcPpGRBZS/TkJ+AVUa/tpQ3lEmpW
         k2z5kFEOvv3J+F2iFR66bXYYMbSDwYJsUhozBRMnHfie5FApi2xCKPBByRPdfsy0hbXC
         iqhtHIJqTJlJ1RUCqMVamcSYd39byqklntTV5Fb8+f/z3738CbEpAS/2TGiCIXZeZ4eE
         2Zvuq98JL+iLj5ClqJuCtAgOlYIbe5J/jiVr2kcCq1xNYEFgoewDbfVPY13iYM5UIwzo
         GtOV5NvSa6kt8E/Z5Gtxk0TNdAube+z19W9YKsLL/yjVeZuowSWKlzPJ87Qkvx4NuoNP
         puxw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eOh1OEAk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OqWctCWYmlrd00Hi9Tu+3n04cAAsg2Tr2GQW91LDq9U=;
        b=XXEmfQZxUiQvoiolT6PBleAPx/FIqcColOXzunySGkKka182N8DndGu5W/7/v3IgWd
         qmSgNBa0HrMzfYbNXOzcNK8XPEvZql+3efs4X1fT54jxLC0THy5gGIV+SZ+pWCxUginT
         xWYLniVhnWVN6XMcTpDU0YPuqf1lpCJIMQ8NCEdnKx8k/lShYPcOuIUBV5DOq17BKW2Q
         NiNYux6GWS7Uma/wUtP9H/tJyOILgTC+o8ixCIrayPKblpfhlI30U4uXEHcK6BikfMsQ
         mS8ZxtgEh4plAqBkCz0ITko0pqzhZBOS6QqO8kFzzK/GpJuJdGD10tBBhk1C2LKu3PMC
         MLAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OqWctCWYmlrd00Hi9Tu+3n04cAAsg2Tr2GQW91LDq9U=;
        b=NcbC4DdZB7kXTqd6+slyeEXe380IYLotR6CbozrMzk8lQTlvk0O8qYsvcUR//AeJ+W
         LwTU0tDqazaqy5KrPMU4lNpoa/7xTeWHp9ANxxMrc2YgE58nNlQOSb1wla67A18bjTLP
         ASppVe0TfkbVvxY96GXVGG4iQ6ggqWUusN7cs6BiWJ2z42y1GxUsQnWVEDd9NXiDrl7+
         jFgfsWyKzetXiBXhdXqgBJ4AvQ/aFsv99uNn3ZftCUXc/tlpTH5ueO54fh922nRxvF9d
         IVZ3e+NLVpAkXF519r8hKSaq91Uulv6p3Vd525chAyMU9VAHy4BUXiseogEMcbeAqhcw
         QRAg==
X-Gm-Message-State: AOAM531zfgImnGgs5eJwt4YXyjIieXho0wt2+0WqM9958L+RPGJNzE6w
	yqBbtkQi2oFi7AMKotFdCDU=
X-Google-Smtp-Source: ABdhPJyIJnRcIOxRSAx7FOB0kzCPBRrUwEJqntTy6XjNy5ln1huYNaN1GVcccW2LjjTnGvOZ/LoarA==
X-Received: by 2002:aa7:9314:: with SMTP id 20mr4368228pfj.65.1598056542940;
        Fri, 21 Aug 2020 17:35:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ee0c:: with SMTP id z12ls1762722plb.6.gmail; Fri, 21
 Aug 2020 17:35:42 -0700 (PDT)
X-Received: by 2002:a17:90a:9203:: with SMTP id m3mr4391357pjo.148.1598056542568;
        Fri, 21 Aug 2020 17:35:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598056542; cv=none;
        d=google.com; s=arc-20160816;
        b=Q/KNwVx0oqiBWaSgwmumxkseQpabNHRUYtooJpLIlqcjNQwszeo345bmcX43j6VPw3
         JXaysWuQDLIv6OMAWtRsrmAzvu2JSwp/RA5hD7xsCgVI2zLziNgbmkO0UaHxkmqC94iB
         Sg9C/ICikceRSfmX5Nmwja2DwVmzNGLYY1AZs2zwdRXyh8+ZPzjWox0qogo8EOVOs22R
         +3aWh4JqgjqABSyJhvFb+N1AAZjAdiEa9OG+BWulZB0TwOn/75McrPMhiz5v2t1QwUli
         1LG93We9mZsyVkPSv/JlLCNpnEwz+wUt8eVDucjswXFEYIVzlLfPmf8cr6zDMDIXgg00
         qU1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Tqaym6YY8iaHj+Q6kB4hQ2UFRz3fNuxdZoJtYXC2HaI=;
        b=pL7pF/N5M5iZi75wdNiq9bdu8HLQZFaYzl3OR7uPFtOk9PYLmP3zcifxkolld0p0bX
         3gP45tmhGNZVfhGDGuPRtMu9UCSc+MKwZ7avBarVgz0aaT0tBM0dmevA/Wki+vIif84z
         UWV+1CjiGPr/3x9VeyZ3QeibweApqqgAo4fUiHXsH+grdLRTA69CkB+zQ4KUFZC+KhA4
         Tt/8oQiqGdiAbhaU8ip+zH9oRCKCRakJQGD4HRm6VDYJPEbH8EbTu6IfcWmGgZDr7Qa3
         3gW5pwX1tAZyP3J9JorsyfE50bpxnK0eFC18ro7HVFjfDgOxVXpThQ66PLwCOWAXLWoJ
         8qSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=eOh1OEAk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q137si205631pfc.4.2020.08.21.17.35.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 17:35:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id z23so1619662plo.8
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 17:35:42 -0700 (PDT)
X-Received: by 2002:a17:902:cb91:: with SMTP id d17mr4189501ply.223.1598056542037;
 Fri, 21 Aug 2020 17:35:42 -0700 (PDT)
MIME-Version: 1.0
References: <20200821190159.1033740-1-masahiroy@kernel.org> <20200821190159.1033740-6-masahiroy@kernel.org>
In-Reply-To: <20200821190159.1033740-6-masahiroy@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Fri, 21 Aug 2020 17:35:30 -0700
Message-ID: <CAKwvOdmPzuQi5Z1KxP5KV6w-L+uYR709p4JheS6nCb2o56Pohw@mail.gmail.com>
Subject: Re: [PATCH v2 5/9] gen_compile_commands: make -o option independent
 of -d option
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Nathan Huckleberry <nhuck@google.com>, 
	Tom Roeder <tmroeder@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=eOh1OEAk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::644
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

On Fri, Aug 21, 2020 at 12:02 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> Change the -o option independent of the -d option, which is I think
> clearer behavior. Some people may like to use -d to specify a separate
> output directory, but still output the compile_commands.py in the
> source directory (unless the source tree is read-only) because it is
> the default location Clang Tools search for the compilation database.
>
> Also, move the default parameter to the default= argument of the
> .add_argument().
>
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>
> Changes in v2:
>   - New patch
>
>  scripts/gen_compile_commands.py | 18 +++++++++---------
>  1 file changed, 9 insertions(+), 9 deletions(-)
>
> diff --git a/scripts/gen_compile_commands.py b/scripts/gen_compile_commands.py
> index 5f6318da01a2..3ed958b64658 100755
> --- a/scripts/gen_compile_commands.py
> +++ b/scripts/gen_compile_commands.py
> @@ -39,11 +39,13 @@ def parse_arguments():
>
>      directory_help = ('specify the output directory used for the kernel build '
>                        '(defaults to the working directory)')
> -    parser.add_argument('-d', '--directory', type=str, help=directory_help)
> +    parser.add_argument('-d', '--directory', type=str, default='.',
> +                        help=directory_help)
>
> -    output_help = ('The location to write compile_commands.json (defaults to '
> -                   'compile_commands.json in the search directory)')
> -    parser.add_argument('-o', '--output', type=str, help=output_help)
> +    output_help = ('path to the output command database (defaults to ' +
> +                   _DEFAULT_OUTPUT + ')')
> +    parser.add_argument('-o', '--output', type=str, default=_DEFAULT_OUTPUT,
> +                        help=output_help)
>
>      log_level_help = ('the level of log messages to produce (defaults to ' +
>                        _DEFAULT_LOG_LEVEL + ')')
> @@ -52,11 +54,9 @@ def parse_arguments():
>
>      args = parser.parse_args()
>
> -    directory = args.directory or os.getcwd()
> -    output = args.output or os.path.join(directory, _DEFAULT_OUTPUT)
> -    directory = os.path.abspath(directory)
> -
> -    return args.log_level, directory, output
> +    return (args.log_level,
> +            os.path.abspath(args.directory),
> +            args.output)
>
>
>  def process_line(root_directory, command_prefix, file_path):
> --
> 2.25.1
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmPzuQi5Z1KxP5KV6w-L%2BuYR709p4JheS6nCb2o56Pohw%40mail.gmail.com.
