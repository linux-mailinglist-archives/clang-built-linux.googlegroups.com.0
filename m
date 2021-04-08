Return-Path: <clang-built-linux+bncBCQZJVV3RQNBBC4JXWBQMGQELQKEKSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id B6F86358BCF
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Apr 2021 19:59:40 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id x4sf1623490pfa.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Apr 2021 10:59:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617904779; cv=pass;
        d=google.com; s=arc-20160816;
        b=CdmHMIlyTpUSVae2vPfZvhfLD/eEFfYcQq3EwoRN0yxQS20sabapa7/7+Z7mnmMELo
         AblSaJr9ZR6ABIdZsuWuon+1y85rGEaRRLimozCHncEkUzgpm3P4yDRdySOAudaci0x6
         jodOFP9DnaXFpiPe3NzY3ONHjA2edQJzYXQnSoeZaGJ/sCb92f7hrswt3XyQLTI7JZJR
         A9DKHJgZJPdHDBHgJJE7PquFLcsGZEL2Dv8BF555cWysRNskgnNFbiPVVyo7wvD+2zdI
         LP4Cbon9c4iQHZDgEM3ZTTUAzTL5jWPfpj36/bLD1GlMq7enyOWpqcOyybXfbyIMmMIf
         tUNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LvuzWmuUtZCm9WXF6QC4o+mu5GOAdOCaBIo5lWuOC7U=;
        b=trA5lrsTtvMEKSqlzpAyMun/Jq79/kGqsmNkwrK0dxpFwWWHJxk6B+CFe/pL/X1FTQ
         xR2yUP+VH4DDSi2RVzT6uv3DA8L36fmWZE5eTPGuvEV32GNxJj38vdIa5sz9jtGx5EcC
         y5eik5kBObS+1m9q7IFJT3cpsLV6FSb7sXBiqnJCdpr1QBagWfWx4a5eBZ7ltCU2xlZs
         7azFwLJ6EAZQ5B1aZTvnfoK4rknjZ2QZWXiFZehf3UJxcf3dgy6C/VxyVx1c+sAiiwYL
         RDFePh0W6hyfMEXryIB9xgln2U9rivkFZ6lesFNSRWWC6RhMqIE+JO4FaK67l1yPEFtV
         o5+w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LvuzWmuUtZCm9WXF6QC4o+mu5GOAdOCaBIo5lWuOC7U=;
        b=hQaO36EHtMt3ztUiRhtYdmhERhhICZCbAotGMoptrswZGjwV0hLtpKJKgMR4peKHDA
         SsUXfZVeLAo7Vq+LZukQ/Zkfu3uj6fDdA1l/TeUZVHdR0NhGDGjHknR1Mm/JJdKAMyhk
         hDaG8TfSuXlfoHzFZg4UhDZyDwXibNSJDHes+QFp8oPf86/YQSn9YgSF7L8JgRZ9dkzf
         UpayUiG+V0rOK1OOT8GuXnSroNuR1Ui1aWJwEN2AZho56N3oDsb1hH6fv72Ut9Xk3SRX
         taeYWm2FQt5zGENIzcO661rb8e4zpQkItLBrHhpQnGD2YqAzSKHe3q8NxtyoWPUI5/4U
         J+EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LvuzWmuUtZCm9WXF6QC4o+mu5GOAdOCaBIo5lWuOC7U=;
        b=lYqlHR56Dv9QVXPoXhNNiGojkVsS2zqcLDxBIvI8cbaEij+EnLapzpEyHZrGaA1Za8
         8U+I3x5EWeZzwD/B3bY6o9kWYNV4SPbvXycHUQ3U2r2PsNt9/sgtALDxsWx4S7Gfkemj
         z1j8u6CKlgmBXWrmBMbN8WYAXFpNrBYjskF6qmByO1UnraPL1FWCzIiOasJT8gPrTjA0
         kpvyWs3GI0sZq7sdGnlESCyT+2PheB1WY63EEv6La+CEjp1l7QrY4Gi3PPkrv3JB1Dkb
         e58Qqh2OlpriHcmCj6Jz8ZP30cxeVDieiIADQX5icP/JyNqX0fh0dXT8YCqGOD2lkt8E
         9UbQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533PerAFsuoXgfYLspxEQ4BIVZoZB/stVSEbRQLKqWpXD6l7G1rO
	8cpylMRIN83vLl57yOFZ70A=
X-Google-Smtp-Source: ABdhPJwkAaP2K+eOjyXnEG1jISsaJBN0iv9zOrnoAxRadzp5MRdnL8KzbvZII4hobeq14lDOIBUX8w==
X-Received: by 2002:a17:902:930a:b029:e6:f010:a581 with SMTP id bc10-20020a170902930ab02900e6f010a581mr9090416plb.32.1617904779355;
        Thu, 08 Apr 2021 10:59:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8e82:: with SMTP id bg2ls2857203plb.10.gmail; Thu,
 08 Apr 2021 10:59:38 -0700 (PDT)
X-Received: by 2002:a17:90a:5418:: with SMTP id z24mr9922826pjh.189.1617904778722;
        Thu, 08 Apr 2021 10:59:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617904778; cv=none;
        d=google.com; s=arc-20160816;
        b=EQVVwIXaeRx/Yvimce+2crMqNhH/GdRsFugD8n/eUW1zV4Cb1hCEozz9q2i9ho2ipi
         4qkpyaCwNaiyIvFcTLsvHByKtbMbEHGtH5fqKWzq9NIjpQETqJNmkymAYz/7kdbbv2si
         Evd8YqwmD7gSsY6GU7kKUA+5jPqeIDvv/C3c1gpyt9ul9NDKAU4jDWI8G5vE5sZbJxdZ
         xrWbOvIrt54xWJZhL6YIMN0HUNsd5Ey2fI8xV+r63n9xvfMB203BlY2qwl2l0fNFeW2y
         N4ezN5HRoJTE4LQxQcfYmlvoAHr2KD7SRG3jQ21wdaba/L+A1mzi2Sc3baQYcfg5Qr6A
         T+kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=ax3ABmQpuWlTEUM4I+bnWh/ue2r9VyNMX16GZ55B25k=;
        b=W63UnisOru/kJQMdMmb8+TBEeuxpatv8uRUnULnHFcVoAKUL5B3HSaJuw46ku0FCK+
         knKUhn6mERMgbBsq6ham23DwCDlztN3+XEk/fcy2T+nzJ/2D8/P8aJbJ8V2qM/D173K/
         vlQY+nopTLsJOfKnMXo3Tc7IMWxM5goBvCF9+vXvhjtAzi09P1uS9dUfvOjdTyWH0N5j
         pQYSaL0I49/Oiqpv2mqe+oBFlSqh+cCTw671LhEr8y6Y+1316r+gt1As46N3poq8DHTq
         Q+BEBb1KF0/59zu+jpdsgwlCnC2mcCFOyye3tLreh52U6M3PZof4KvDToF8zGIn34DeX
         DDaw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f179.google.com (mail-oi1-f179.google.com. [209.85.167.179])
        by gmr-mx.google.com with ESMTPS id j184si22599pfb.1.2021.04.08.10.59.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 10:59:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as permitted sender) client-ip=209.85.167.179;
Received: by mail-oi1-f179.google.com with SMTP id x207so3099914oif.1
        for <clang-built-linux@googlegroups.com>; Thu, 08 Apr 2021 10:59:38 -0700 (PDT)
X-Received: by 2002:aca:5fc3:: with SMTP id t186mr6880729oib.69.1617904778140;
 Thu, 08 Apr 2021 10:59:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210407213048.940498-1-nathan@kernel.org>
In-Reply-To: <20210407213048.940498-1-nathan@kernel.org>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Thu, 8 Apr 2021 19:59:27 +0200
Message-ID: <CAJZ5v0iKYN-tM=3JXTPxXFMsyK8X1_yEHSwmtK+xsAmZ-8D=Pg@mail.gmail.com>
Subject: Re: [PATCH] ACPI / CPPC: Replace cppc_attr with kobj_attribute
To: Nathan Chancellor <nathan@kernel.org>
Cc: "Rafael J. Wysocki" <rjw@rjwysocki.net>, Len Brown <lenb@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Sami Tolvanen <samitolvanen@google.com>, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.167.179 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Apr 7, 2021 at 11:32 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> All of the CPPC sysfs show functions are called via indirect call in
> kobj_attr_show(), where they should be of type
>
> ssize_t (*show)(struct kobject *kobj, struct kobj_attribute *attr, char *buf);
>
> because that is the type of the ->show() member in
> 'struct kobj_attribute' but they are actually of type
>
> ssize_t (*show)(struct kobject *kobj, struct attribute *attr, char *buf);
>
> because of the ->show() member in 'struct cppc_attr', resulting in a
> Control Flow Integrity violation [1].
>
> $ cat /sys/devices/system/cpu/cpu0/acpi_cppc/highest_perf
> 3400
>
> $ dmesg | grep "CFI failure"
> [  175.970559] CFI failure (target: show_highest_perf+0x0/0x8):
>
> As far as I can tell, the only different between 'struct cppc_attr' and
> 'struct kobj_attribute' aside from the type of the attr parameter is the
> type of the count parameter in the ->store() member (ssize_t vs.
> size_t), which does not actually matter because all of these nodes are
> read-only.
>
> Eliminate 'struct cppc_attr' in favor of 'struct kobj_attribute' to fix
> the violation.
>
> [1]: https://lore.kernel.org/r/20210401233216.2540591-1-samitolvanen@google.com/
>
> Fixes: 158c998ea44b ("ACPI / CPPC: add sysfs support to compute delivered performance")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1343
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>  drivers/acpi/cppc_acpi.c | 14 +++-----------
>  1 file changed, 3 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/acpi/cppc_acpi.c b/drivers/acpi/cppc_acpi.c
> index 69057fcd2c04..a5e6fd0bafa1 100644
> --- a/drivers/acpi/cppc_acpi.c
> +++ b/drivers/acpi/cppc_acpi.c
> @@ -119,23 +119,15 @@ static DEFINE_PER_CPU(struct cpc_desc *, cpc_desc_ptr);
>   */
>  #define NUM_RETRIES 500ULL
>
> -struct cppc_attr {
> -       struct attribute attr;
> -       ssize_t (*show)(struct kobject *kobj,
> -                       struct attribute *attr, char *buf);
> -       ssize_t (*store)(struct kobject *kobj,
> -                       struct attribute *attr, const char *c, ssize_t count);
> -};
> -
>  #define define_one_cppc_ro(_name)              \
> -static struct cppc_attr _name =                        \
> +static struct kobj_attribute _name =           \
>  __ATTR(_name, 0444, show_##_name, NULL)
>
>  #define to_cpc_desc(a) container_of(a, struct cpc_desc, kobj)
>
>  #define show_cppc_data(access_fn, struct_name, member_name)            \
>         static ssize_t show_##member_name(struct kobject *kobj,         \
> -                                       struct attribute *attr, char *buf) \
> +                               struct kobj_attribute *attr, char *buf) \
>         {                                                               \
>                 struct cpc_desc *cpc_ptr = to_cpc_desc(kobj);           \
>                 struct struct_name st_name = {0};                       \
> @@ -161,7 +153,7 @@ show_cppc_data(cppc_get_perf_ctrs, cppc_perf_fb_ctrs, reference_perf);
>  show_cppc_data(cppc_get_perf_ctrs, cppc_perf_fb_ctrs, wraparound_time);
>
>  static ssize_t show_feedback_ctrs(struct kobject *kobj,
> -               struct attribute *attr, char *buf)
> +               struct kobj_attribute *attr, char *buf)
>  {
>         struct cpc_desc *cpc_ptr = to_cpc_desc(kobj);
>         struct cppc_perf_fb_ctrs fb_ctrs = {0};
>
> base-commit: 454859c552da78b0f587205d308401922b56863e
> --

Applied as 5.13 material, thanks!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0iKYN-tM%3D3JXTPxXFMsyK8X1_yEHSwmtK%2BxsAmZ-8D%3DPg%40mail.gmail.com.
