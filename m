Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDXL4DYQKGQE5XCGOZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A08151508EF
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 16:00:31 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id c24sf712411ila.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 07:00:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580742030; cv=pass;
        d=google.com; s=arc-20160816;
        b=P9lF3EHauwJXUZv27V4PshANTAZX5TN0A4nZQcijNyUaXa5EL3Y6WETRZcAMbMz39d
         kQ7E0q2VfOyjmfp2Frc+EdxAql8ofW9+VVeiSF1qZacbKE9D9GnHLNXvXPMiWCY/qTTz
         esHSYFlYOhdomps2/6IbsEpNHwpJnFFZyk6iyDQwnJAIzE4TgpU7YPqfoZs1GA/kQnKh
         YJZnoK7ADms9qV1RDD6REOhX00O+jXS0Cc8qob4x6gBScCb4GBapp8frRCLIBoOOt3Ct
         SGXbW4M+w9yOgmyY9UAjVAhHesln4Fy9OKOmk2KgVI0IfccqK7gKlA9pSwhkqixg+Zc5
         0DXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=QsA7/qM5R6pLBJY7IEUbcleocuUzBG3l1jc9cFUT0yY=;
        b=woCS2/Tnw9u7btPcIZlQtVDVlLiGzfy5V7M9uputM3JNToXH/5vU/VRQIA/p4IVVnP
         ssB2TjB742Sc9qLkwUNA9vGTsMYbOY/jfq7D3IoNnGSlnXPrxkmXUfxOy9afkJAmYUpC
         eIaDDMF2+U5mucc7HNqpm4ajUPoNvTOkZSB+VJLBgibrTgobUfkzyvm9cE47mS3SSPFa
         sV4LF/M0HaU4JV0o/icOemgZ6M6/unZ84Gpv/ii8mvkB9DBUjfFrVBTBf2lAyCP3Iplg
         N1E+BBb63azCqLobEEBBCOpR3bC0yJ1Ir4RoPrHeovg3hs/2vdcDXho2btl8CTqEF3/4
         8pJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jBCjw8wV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QsA7/qM5R6pLBJY7IEUbcleocuUzBG3l1jc9cFUT0yY=;
        b=J3bT1OJmpQi32ztsZZDaTl/tJvJp/1iL1UDh17o+dXagWyxEzD3DXU0AOw/lhwXXks
         cyEEDT+jokLV6Xrid+Y/JECsMkKvrFS5VmL79YCpiqej7tHElyjGqFLeaoIzyQ8JA0ID
         8U7WCnXGxOQRA9s0CtoQWAvr0DCmCBfG+knPInwB+hhZPYxfD1Yu/qAekC1JmFRZHw3r
         j8W4tjrzjvePf6cKCSQl9oVFGuoZ0+VIy1da/7Y89ZYI6VhB9flOprG31d3J6Cxk+lLs
         0y1fWIXqxkEY2ILIxOH8BuKsVd5lw6Rdsg+DsU0vljDxFNjnA/9UA0pwp4noArNfE/Cc
         ADAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=QsA7/qM5R6pLBJY7IEUbcleocuUzBG3l1jc9cFUT0yY=;
        b=bYSDHJLA5hpPy+2LhnksR2nkp5q8dXi2CxeaUUeeKK+6BoQG1e/szrQHcWn7K2vGJa
         a9dGxk3RWjIFjrQZFdG9eOs1bZ9Xe/39RmYgGRyuY3FnFsbZpay9ch8SoNcOrhNisjJy
         sCFI3Rg3Ig3pNRXTspIsBRfVqQ9kEHtfajB5DQzrU+gcZaykNIL40xpUoVcONizV/Yw1
         UHdbB55hqxxONgElPr4mxw05XXIXN5UCmZI7zfqDJC5br6n+Ik10hdRw8j3MSas/G9fy
         65i8qd7+Fbyy4tcVlUP8MBORiwhwbo2s7ZyUz5Xx3igpvgOP1GROSGlIGm9Tao00GVap
         5d9A==
X-Gm-Message-State: APjAAAXrPoDFh7sn6mcpC1LN8Lq71CDaOjx6SLqlynHU2945HJZ7ui8x
	piShjjEwVJm6CDzn8wBrz0A=
X-Google-Smtp-Source: APXvYqyJilTGZWn0G1IDiKKh+twGXMF7U8Bcq0UbvAkrqvDcpd0Q7hihi8XillJAgrMaswMCuMpvmA==
X-Received: by 2002:a6b:f913:: with SMTP id j19mr17980758iog.124.1580742030604;
        Mon, 03 Feb 2020 07:00:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cb49:: with SMTP id f9ls3350747ilq.7.gmail; Mon, 03 Feb
 2020 07:00:30 -0800 (PST)
X-Received: by 2002:a92:c8d2:: with SMTP id c18mr16233993ilq.113.1580742030227;
        Mon, 03 Feb 2020 07:00:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580742030; cv=none;
        d=google.com; s=arc-20160816;
        b=Mx9Fv9n/CH7x8dmgi/NFLVA3vJJatEerq1C58SjUs5xlr2569zRxIKvqlP0H2omcjw
         aVF2eYt1oq6ZNzsN5e5NOI7fEErr7T5E0RNGdBKSRAfs4rb2XG+6c3Xolfj9wgtEPMxy
         NQ++iWOgRAN9XJ0/wJDYNCEDiUxT1X56BOzQZmnOxVqGpfVFtdFHqGNU1r5TcLAuYsgn
         p/5nAq/ivhv39FX3ABvVgp09SMTZ6TsQnxMWVyCpV0P+LMzbnN+xJoxe3p7T7tcObNgk
         YBPDeSFvxMZVvp26XkemY5XuihXrJTwpliGDcrGFrO4H1bmY0eNfkq4yPnymyvETeYOe
         3DPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=DVvg+WoU7tidMKDDiK4jtPP0ctLD2W0SviMA4o6pp5s=;
        b=aMOC7XuWOfwG4UnW56ljcNy3ynu1C0e98uOmBt5fyQ4wmWKyKhoamMNVE76Huj4xVL
         TgbaCLwF842klsBz27BZkTrqGtrrMaA6OBGvPD+XjuJA909nmAHddAAAP1ifubrN0tMX
         m/RNFe51eqwk0UsQ6nKJCeeErqgdcnHicRxaZQhKKa4mefMJqxG/AJdmTRI6NoQ3PQtJ
         Qx1dr4b8GRYrMqDAGEkaGxss98pxtVYfdjygtvr9pFs7kKXVVTBl5wwHT+mg7MqBxfAb
         /sXHGyypbQ/NQf3fpGKuUtCLgxV9vDd8ugzkvEQ763gdn+TNOoHd8b/A5kEMjjNiXFsU
         btoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=jBCjw8wV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id k18si1004991ilg.0.2020.02.03.07.00.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 07:00:30 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id d9so5953228plo.11
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 07:00:30 -0800 (PST)
X-Received: by 2002:a17:90a:7784:: with SMTP id v4mr30288131pjk.134.1580742029039;
 Mon, 03 Feb 2020 07:00:29 -0800 (PST)
MIME-Version: 1.0
References: <202002031044.RnwQP6Bt%lkp@intel.com>
In-Reply-To: <202002031044.RnwQP6Bt%lkp@intel.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 3 Feb 2020 15:00:16 +0000
Message-ID: <CAKwvOdmXXSQ9UmO0oNkPRv-ZPcnFG9RAH5fUkh_eMyoV=UjVHQ@mail.gmail.com>
Subject: Re: [hwmon:hwmon-playground 3/12] drivers/hwmon/pmbus/pmbus_core.c:174:18:
 warning: address of array 'data->info->phases' will always evaluate to 'true'
To: Guenter Roeck <linux@roeck-us.net>
Cc: kbuild@lists.01.org, 
	clang-built-linux <clang-built-linux@googlegroups.com>, kbuild test robot <lkp@intel.com>, 
	kbuild-all@lists.01.org, vadimp@mellanox.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=jBCjw8wV;       spf=pass
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

https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/commit/?h=hwmon-playground&id=ec31c1832ca6505f46d068e87a0524cd21e468b4

+ Guenter, looks legit, can you please take a look?  phases is an
array member of a struct, so it can never be NULL.

On Mon, Feb 3, 2020 at 2:55 AM kbuild test robot <lkp@intel.com> wrote:
>
> CC: kbuild-all@lists.01.org
> CC: linux-hwmon@vger.kernel.org
> TO: Guenter Roeck <linux@roeck-us.net>
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-playground
> head:   4e5fc259a7d202d7e13818052a6cdaff0f602b35
> commit: 4e87220ea3c48bcb3aeadc4000acf9bcc7aa7522 [3/12] hwmon: (pmbus) Implement multi-phase support
> config: x86_64-allyesconfig (attached as .config)
> compiler: clang version 11.0.0 (git://gitmirror/llvm_project ba8110161dfb096bbc63039afd87ff6417328f91)
> reproduce:
>         git checkout 4e87220ea3c48bcb3aeadc4000acf9bcc7aa7522
>         # save the attached .config to linux build tree
>         make ARCH=x86_64
>
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/hwmon/pmbus/pmbus_core.c:174:18: warning: address of array 'data->info->phases' will always evaluate to 'true' [-Wpointer-bool-conversion]
>            if (data->info->phases && data->currphase != phase &&
>                ~~~~~~~~~~~~^~~~~~ ~~
>    1 warning generated.
>
> vim +174 drivers/hwmon/pmbus/pmbus_core.c
>
>    150
>    151  int pmbus_set_page(struct i2c_client *client, int page, int phase)
>    152  {
>    153          struct pmbus_data *data = i2c_get_clientdata(client);
>    154          int rv;
>    155
>    156          if (page < 0)
>    157                  return 0;
>    158
>    159          if (!(data->info->func[page] & PMBUS_PAGE_VIRTUAL) &&
>    160              data->info->pages > 1 && page != data->currpage) {
>    161                  rv = i2c_smbus_write_byte_data(client, PMBUS_PAGE, page);
>    162                  if (rv < 0)
>    163                          return rv;
>    164
>    165                  rv = i2c_smbus_read_byte_data(client, PMBUS_PAGE);
>    166                  if (rv < 0)
>    167                          return rv;
>    168
>    169                  if (rv != page)
>    170                          return -EIO;
>    171          }
>    172          data->currpage = page;
>    173
>  > 174          if (data->info->phases && data->currphase != phase &&
>    175              !(data->info->pfunc[phase] & PMBUS_PHASE_VIRTUAL)) {
>    176                  rv = i2c_smbus_write_byte_data(client, PMBUS_PHASE,
>    177                                                 phase);
>    178                  if (rv)
>    179                          return rv;
>    180          }
>    181          data->currphase = phase;
>    182
>    183          return 0;
>    184  }
>    185  EXPORT_SYMBOL_GPL(pmbus_set_page);
>    186
>
> ---
> 0-DAY kernel test infrastructure                 Open Source Technology Center
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002031044.RnwQP6Bt%25lkp%40intel.com.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmXXSQ9UmO0oNkPRv-ZPcnFG9RAH5fUkh_eMyoV%3DUjVHQ%40mail.gmail.com.
