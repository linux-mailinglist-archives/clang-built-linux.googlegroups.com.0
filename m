Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBFHP4DYQKGQE5FERRKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id EDD4F15092C
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 Feb 2020 16:09:09 +0100 (CET)
Received: by mail-pj1-x103f.google.com with SMTP id i3sf10329118pjx.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 Feb 2020 07:09:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580742548; cv=pass;
        d=google.com; s=arc-20160816;
        b=SaQkgaiibxWtYLQMyHhj4IIQ9Ts2acOjZaepGmRMu+qN2i4h+8iCxROsEldvsAcEnD
         QUbUSoWIOjJGs6tE1k4Xr5dQLr6zfTLyX8KRfRqTJEv9X7ep3ObxZCGW7nv/8593j6I3
         2KazKweons2esBsJini1Cz7mAteD/ANjulqEBGsuNVJC0iv2BW+uX39FrcEvfnL8QHA4
         Rx/pEmGE1T+97L43wYFj3XJ+U4AQpZJs0ofjlrcjzQcNfFLlJbZTarhbU7rVW4jWHWXm
         f9i3N9gw4q5CLWDoephDc7nggrkp1GQMEjnk7zGP9OeeR3aACKZqgb1Qc4lxxlTbf4QI
         HEaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vVoayJOpomOybchF23nRTKzuuUdrBqZRRQ2DsHG+mJ0=;
        b=ZQ1URNH5Skd0ZqlWMIk7XzMEWqBl2laCUsfxQ6IwSrOvkuWzQ2+04d4csNM8rtsfzS
         V0k3W4Y+Nda134FnpiZp9WDIuGKB8p2jtKLqGKpl70T0fvEF+yDTc+Wofl7TwArvEXG1
         mpRvUbdWlqtNqvd9gim8+pfjBuN29FlRTJc9Uo3HCnZEw33TweE+7Aprc22oVCALS0ky
         kvR/9Zs6Gdco7BUYPLEtBZIIVaTkpdQwm41DJjnnmAnNCrzT8GiFqx+QwDQVuQ1uV6U2
         2ahdkpItSbC/QZx/UaqA7t4k64ihQoI2IDkCgLG58Ymfmy/7yUZOGbirp7txHPYSN2TV
         IAmA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SVtxTy+9;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vVoayJOpomOybchF23nRTKzuuUdrBqZRRQ2DsHG+mJ0=;
        b=CPc7rGNkvmrIzovDHuw3DcsX7twd8A6SqBeFaX0CicoQwf/UIlpk0C8cqkGPy32WZI
         k9LEjNPTkBsP8qPXyVn0lEIKDIPNSfdobkMK9F3/wNROOck9JsZ2obkei3TQTBA1ooCU
         xIR7DFIblGYKms+ZqBuxLea8mhEDJUqnVc0WWB9GVAHA5Wuk14UznX6jvYCS3GkAqXJx
         Q6vqDsvIwLBNP27pLp02CXa8HbQEuLwGZ73LApNk2fKwTWjNvZi4HUleoUzw1MYw2hjs
         Q0Ytb25ESPU3BEvhnmLdzJOQuAoJwf6dTlb5SZ7To+gQhSPL73zk3Lyj78pNyI2iz3Jj
         6Rmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vVoayJOpomOybchF23nRTKzuuUdrBqZRRQ2DsHG+mJ0=;
        b=sQteiEZuMf0wxyRqULayxbz3jGqSlioiCaEsOMNv/aplZtyDs0lcAjP6RuKzRhb9ZX
         y547yMKX8bh3Bx7d5p32h9MRilJuq73s+dDQvzmRPSuUeWl/Gr6TtT7gJ2DWRms47Kdk
         vfae8FfIaS9A0sMko+3EuD9fdJFz2G/zJkFTxyajZYhQIQYbbm7X5HWPDJBmUehAPtc9
         V0FEx9TR6NgZmNVs/Y1RVpD8zYUvOfjwkiaVBvvyqa4sDeN0eZOHrN84Lhg2igM6ZX6o
         /8kwXr0whTQKnxYmREBcaGzeoOKGC559BrYC2R6T2W/uq3ouZQyufBrUA06+FlgYOI8E
         LopA==
X-Gm-Message-State: APjAAAWJCvpw1bFZsm0d3QfIjm9MI9rh0q9lvRxpJP8O11939RxqVWw8
	zyxz9vHs+Tzf6fVJ1ncJdRM=
X-Google-Smtp-Source: APXvYqxwsBdx9eLluU2s4nr4QOtc0ZGP4FZVSng6w9P54acAtaq4r90iqh1o//x649FWupWIqtmEPQ==
X-Received: by 2002:a17:90a:7303:: with SMTP id m3mr30451955pjk.62.1580742548279;
        Mon, 03 Feb 2020 07:09:08 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:cec9:: with SMTP id y192ls6737010pfg.4.gmail; Mon, 03
 Feb 2020 07:09:07 -0800 (PST)
X-Received: by 2002:aa7:8755:: with SMTP id g21mr25196502pfo.36.1580742547688;
        Mon, 03 Feb 2020 07:09:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580742547; cv=none;
        d=google.com; s=arc-20160816;
        b=tbybuOggar4jDTvUsOVCJ5gglR6geYL3zCM7mS2qUTU1JNDbWn0Jg+Pmt7Zj1JzAJu
         LapaBMAx2m7UN1lkm/NShkl+MUiuahdOX4NceotdeYH81DTA9fWq21IXW7+HWwk+2wMp
         HHpwQtBxI/3s9e1MMgLPuyQgst6syQww5h7dLGX77dOL8zhem4otj2f8ZeW7g0dWUIaz
         ltkQ0OJWJ4UodDhkbs1anb9rmyu/zq7dv2pmZ+Je3HT8+1DcMlgg22ablr8dAoLyKh+T
         9p/j9SYDnGv211PX0gMeIptNmqe9ALWVFJkjaOZCx2HC4s2ZMqLwsIaJ9rznfgyJwS8r
         aH3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=C7oscdFo25aaziYUuZJa6tEaIQoHmhMqW/MHSe1ngN4=;
        b=smwnRQSAsdTr0z9OyIV8bgLNOKoSx0JqhiGbo5bglJQY8SeF1fNJbCr/5OMOcPkhfV
         B3vWe2uY18ryrwwWOmbCyi7smF0+vkICXbtP7UXiHjYkFlOw9J+wW0tg4RX/VlM9Hxxx
         qezoaR84bi7wGKX7aT3aspeDlVDtAtamqe/BuwctPbu0t0nRyyLEDbpZHcVRNLRgSS//
         uYqvPzK1gO/WhsMJVuPkKr4uKvnP8LcJOHCnV6ilR7LtkVhbYo8JSa4S+mqJDsF02WRg
         AmnrxmI6q31EY+sDR6NgUxOm+GZJvO19kdTM6fq02jIboRSc+VEULOstD93goHaHKLxT
         8VcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SVtxTy+9;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id y13si803329plp.0.2020.02.03.07.09.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 07:09:07 -0800 (PST)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id x185so7725475pfc.5
        for <clang-built-linux@googlegroups.com>; Mon, 03 Feb 2020 07:09:07 -0800 (PST)
X-Received: by 2002:aa7:8a8e:: with SMTP id a14mr25305881pfc.217.1580742547415;
        Mon, 03 Feb 2020 07:09:07 -0800 (PST)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id z5sm21964727pfq.3.2020.02.03.07.09.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2020 07:09:06 -0800 (PST)
Sender: Guenter Roeck <groeck7@gmail.com>
Subject: Re: [hwmon:hwmon-playground 3/12]
 drivers/hwmon/pmbus/pmbus_core.c:174:18: warning: address of array
 'data->info->phases' will always evaluate to 'true'
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
 vadimp@mellanox.com
References: <202002031044.RnwQP6Bt%lkp@intel.com>
 <CAKwvOdmXXSQ9UmO0oNkPRv-ZPcnFG9RAH5fUkh_eMyoV=UjVHQ@mail.gmail.com>
From: Guenter Roeck <linux@roeck-us.net>
Message-ID: <b1994377-e1ea-2c4f-5de6-a882f7875875@roeck-us.net>
Date: Mon, 3 Feb 2020 07:09:05 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmXXSQ9UmO0oNkPRv-ZPcnFG9RAH5fUkh_eMyoV=UjVHQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=SVtxTy+9;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::443 as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

On 2/3/20 7:00 AM, Nick Desaulniers wrote:
> https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git/commit/?h=hwmon-playground&id=ec31c1832ca6505f46d068e87a0524cd21e468b4
> 
> + Guenter, looks legit, can you please take a look?  phases is an
> array member of a struct, so it can never be NULL.
> 

Hi Nick,

Thanks for the note; already reported twice or so ;-), and fixed.

Guenter

> On Mon, Feb 3, 2020 at 2:55 AM kbuild test robot <lkp@intel.com> wrote:
>>
>> CC: kbuild-all@lists.01.org
>> CC: linux-hwmon@vger.kernel.org
>> TO: Guenter Roeck <linux@roeck-us.net>
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/groeck/linux-staging.git hwmon-playground
>> head:   4e5fc259a7d202d7e13818052a6cdaff0f602b35
>> commit: 4e87220ea3c48bcb3aeadc4000acf9bcc7aa7522 [3/12] hwmon: (pmbus) Implement multi-phase support
>> config: x86_64-allyesconfig (attached as .config)
>> compiler: clang version 11.0.0 (git://gitmirror/llvm_project ba8110161dfb096bbc63039afd87ff6417328f91)
>> reproduce:
>>          git checkout 4e87220ea3c48bcb3aeadc4000acf9bcc7aa7522
>>          # save the attached .config to linux build tree
>>          make ARCH=x86_64
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> drivers/hwmon/pmbus/pmbus_core.c:174:18: warning: address of array 'data->info->phases' will always evaluate to 'true' [-Wpointer-bool-conversion]
>>             if (data->info->phases && data->currphase != phase &&
>>                 ~~~~~~~~~~~~^~~~~~ ~~
>>     1 warning generated.
>>
>> vim +174 drivers/hwmon/pmbus/pmbus_core.c
>>
>>     150
>>     151  int pmbus_set_page(struct i2c_client *client, int page, int phase)
>>     152  {
>>     153          struct pmbus_data *data = i2c_get_clientdata(client);
>>     154          int rv;
>>     155
>>     156          if (page < 0)
>>     157                  return 0;
>>     158
>>     159          if (!(data->info->func[page] & PMBUS_PAGE_VIRTUAL) &&
>>     160              data->info->pages > 1 && page != data->currpage) {
>>     161                  rv = i2c_smbus_write_byte_data(client, PMBUS_PAGE, page);
>>     162                  if (rv < 0)
>>     163                          return rv;
>>     164
>>     165                  rv = i2c_smbus_read_byte_data(client, PMBUS_PAGE);
>>     166                  if (rv < 0)
>>     167                          return rv;
>>     168
>>     169                  if (rv != page)
>>     170                          return -EIO;
>>     171          }
>>     172          data->currpage = page;
>>     173
>>   > 174          if (data->info->phases && data->currphase != phase &&
>>     175              !(data->info->pfunc[phase] & PMBUS_PHASE_VIRTUAL)) {
>>     176                  rv = i2c_smbus_write_byte_data(client, PMBUS_PHASE,
>>     177                                                 phase);
>>     178                  if (rv)
>>     179                          return rv;
>>     180          }
>>     181          data->currphase = phase;
>>     182
>>     183          return 0;
>>     184  }
>>     185  EXPORT_SYMBOL_GPL(pmbus_set_page);
>>     186
>>
>> ---
>> 0-DAY kernel test infrastructure                 Open Source Technology Center
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org Intel Corporation
>>
>> --
>> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202002031044.RnwQP6Bt%25lkp%40intel.com.
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b1994377-e1ea-2c4f-5de6-a882f7875875%40roeck-us.net.
