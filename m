Return-Path: <clang-built-linux+bncBDEMNV62UALRBE7J7P2AKGQEZYBFJGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 62D091B27C5
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 15:26:43 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id b203sf1361594wmd.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 06:26:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587475603; cv=pass;
        d=google.com; s=arc-20160816;
        b=HkABp4yfUqES2FIGsTQJFBMKrUr0w0mpp/1mcyiThZE9HZEWeANTyjRUNlRvLNAFU3
         3SmuElTxf0KIbr5VcQvqqJuzxsDvO1+haxP97jc776EeOqFMS1Ognz4TsoDVM/wfuKdX
         +nGVwefsCO5clu6CYxPvr/VDOSFF4hf9vOzW48fqmjIZMljifYvxNjCPpiRXXsbInIfp
         us7lhB/62xDBvvQI25cgUkUetH9Y2g6H8CKr50dgeRf8KwTvXqaobm8/6abjILIh956C
         ezM6OTFkWXOx1meOocaJvHIU70TLihRgj2TYAJ2c5U2h6cTh6+yc2Dt01MuexUhN8OmG
         bFsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=kMrPZlmCaIK4vthJ/kDRAzMmzYSktZB+HR7XFjfwVBQ=;
        b=peXAmFRrWQWMS/l5m4RYTM69FIbZ2IdOZr8ZF7AZX5EIpS/T/hdZynpVnuheeoG611
         pK5HZTAYiRLxpjrUOplb8tlpjKyFKCQEMCuqeIJRPhmfVV3pMsJLhW9JBrUrdT1wgfJn
         tsBnPFAFV9uei/ggudF+CudNOSIC8p4YRCUdDH+FG3yjQ9FwqlooCWZAL1mTFBGMgL2E
         UFtRpL6ZRhRFGGuvyeY2QuC3svfD36OEwHYfep6H/nheOBaJ5j2hfHZzxAeURbejgNaq
         ZUT68KTlMDBMaDrKXDlGMuEZ6zTWg+m0vgFll6iQAvJa9BvVZ91i6IXZ4u+OhQVDMg9z
         MCEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="em1Yu/Bf";
       spf=pass (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=baolin.wang7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kMrPZlmCaIK4vthJ/kDRAzMmzYSktZB+HR7XFjfwVBQ=;
        b=IHl4WDnhyU7q3jf+yfHSDIZV204S/aDZ7erG9gS1TSToxco/zDwobH5XI+k+kDT59E
         xR9+7TUtrBCD88VWgrgcK5EfGPoM1SudiMoOPzNVBWDIOkT5WgL8BO/fURr5av3nCk5Z
         Lu71fRDloY8iR6mUeOSKWgE77Ny+SVTo+uFaiCKxii5gF/AS8YqEnGA+ti0G5R5Xkk8o
         Y3toiHSubMFqkSYcsTdhY/xGv4y7+FBzt+QAZe9N9NXS+gWUR4YFCTBbilEsfWcUAerK
         1jiMu8GNaf+EbWPaQ01IUyHZv+qYxPgg7AWxZ4+syVjoMRQmGwIQWvwJtDGIvM5bXFKQ
         Mlew==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kMrPZlmCaIK4vthJ/kDRAzMmzYSktZB+HR7XFjfwVBQ=;
        b=pXDRl/6tKVIsdDY1wcYtGBt+AgrBO9QePwrrtZGnr8yxqoTldXFfptamEE0WN9OfZ3
         9gXjasvzWHXrG63cRgpBYY82hCKfSxTEuX/a9bKq67ZOQrBsZ9pHjKFuTLp1TZj+rXne
         ov1J/jQifc7cFbl3SI50jgsgXBvx38IVL/gBQhUeNyZWPqTK1sHmWL8t8XrZLoRnfEVs
         jnXqMShrR7QTRKizq8LqdIxo/6NvoQyicbh1f2XK5UM1O7jyWpCDaLfSq4nhaQT1eXpD
         DrKu+hqu+Wr2JAJtu2bVwyJYtRuGG9MWHp+HZgmwR1VW2WRZ7tmQdFSB8UiJk6JoMoWV
         mhTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kMrPZlmCaIK4vthJ/kDRAzMmzYSktZB+HR7XFjfwVBQ=;
        b=Xf30E8ktxnzhqZVkAQf6dirPxu/qTKvWwsIwnk1Z3zKVVVG+GpUSAw+WqT0UGie0iL
         otPSx+GRGzI2jB15v0ZrpivByeSaUP7r6wwwd1w+2paT/cAflCZdB2St9TJzNBRO7nR0
         7vlJeAw8OgXjs1Q/x2VpRW6ALoWRoskf2i6vBUAAI5hE/eazZv2f1oxSHYqRV8KiedUw
         Tbi8pMb26Y2x0eWaoYlF6b92ELqtr9WW2x8XShvv5g8CDdILALRa3d59gRTYKpKVlG4y
         MwK9bgswmCnrE080lyfdhJAfi3Tzx28u6XPRRZB3EdGEjUTZjxUcIVMBADNGzKFD9nos
         YzDQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaZw8PlmDl4uxG8/DUK+KDtiCNkwEfm5yqALD7aU/ikXhvuNLuZ
	rozj2uWYaW6ZHUL2HcnSx5c=
X-Google-Smtp-Source: APiQypJqkBotOyroDf2bEd9BKrQziKHNtV5G6ncGR1Qr5Q5dXjI2KilIrGVlBPPzM4aq6uo09GWZhg==
X-Received: by 2002:a1c:7301:: with SMTP id d1mr5215780wmb.26.1587475603122;
        Tue, 21 Apr 2020 06:26:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:618f:: with SMTP id j15ls15788500wru.3.gmail; Tue, 21
 Apr 2020 06:26:42 -0700 (PDT)
X-Received: by 2002:a5d:690a:: with SMTP id t10mr22362555wru.225.1587475602526;
        Tue, 21 Apr 2020 06:26:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587475602; cv=none;
        d=google.com; s=arc-20160816;
        b=UB54PnH8093LMyPMSzcZssJB4eSrpHz2x1+ZSv6pxHjtWPauV0vn+2cTWrRUxGOI5/
         4/8gv1Rdj3u0JtDyCDPQaKmfbzIGtD2aL0nbgbaIe4Gj2Qo1wljiA4m5d0AQR9MTSsg4
         djJuoFp+b4w+TWEkN1FLi0eOSkj5t4BFxKEifL2DMTTQeFHIYJ8m5WI8CAzVCLvIco2v
         OgH4JMMSHKM5b1qlD+CSE89JSTrV0mXwdVdmhYcshoSn3orrXrTRQiVoUcmyazUwlSnm
         GE2acaE9jUnACbenT3T7VrF5o370MZlTPP4MaytdEVxBzFjd0QxU/OXqlSaF3NcYUwYu
         9l9g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=AfnArLUZmRY8aEwrBjVPUBVpxOW3jh3IS1qWj7upXQU=;
        b=RRiLxe5aXghWj2FBJJklc697A7Ftm6eQU7YwILzDgf7u3JBkanYSWRq+u2TPGoWgUH
         dmPMDbJs0CaYUcPxaZ5u+jm+mV664Atlt+Mg8jWAdxPAoWyXyk0Pn5cBxPaPHTQFWjOz
         Ow2jQwbb+Y2w2CcTsZ2URfocgN85Ifp/7ROBhvFXorghy5WYF2r6ZQJTfXizlrzJ1M/L
         D897xHXubZgNd8BxDsLdkACVtxye3w7rIbrhuTpkpZtQiOr73dcH1wy2TKdBsa68Yqqd
         P9am4UwszH2zt0dokBLkDnii2OIOkFn6lea/mKsixO+u9AcrJRT76nF5WbnUu6ICwe8K
         2COA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="em1Yu/Bf";
       spf=pass (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=baolin.wang7@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id a5si172433wrg.4.2020.04.21.06.26.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Apr 2020 06:26:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id w145so11106102lff.3
        for <clang-built-linux@googlegroups.com>; Tue, 21 Apr 2020 06:26:42 -0700 (PDT)
X-Received: by 2002:ac2:53a6:: with SMTP id j6mr13807643lfh.153.1587475602059;
 Tue, 21 Apr 2020 06:26:42 -0700 (PDT)
MIME-Version: 1.0
References: <328db39335b515b190b518445a777ee97751d393.1587173992.git.baolin.wang7@gmail.com>
 <202004211716.IWGuUFlz%lkp@intel.com>
In-Reply-To: <202004211716.IWGuUFlz%lkp@intel.com>
From: Baolin Wang <baolin.wang7@gmail.com>
Date: Tue, 21 Apr 2020 21:26:30 +0800
Message-ID: <CADBw62o4zQ0UBMgSA13TLgb3ZOiBv-CbCS1j7adgUazoREPSzQ@mail.gmail.com>
Subject: Re: [PATCH v2] mfd: syscon: Add Spreadtrum physical regmap bus support
To: kbuild test robot <lkp@intel.com>
Cc: Lee Jones <lee.jones@linaro.org>, Arnd Bergmann <arnd@arndb.de>, Mark Brown <broonie@kernel.org>, 
	Orson Zhai <orsonzhai@gmail.com>, Chunyan Zhang <zhang.lyra@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: baolin.wang7@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="em1Yu/Bf";       spf=pass
 (google.com: domain of baolin.wang7@gmail.com designates 2a00:1450:4864:20::143
 as permitted sender) smtp.mailfrom=baolin.wang7@gmail.com;       dmarc=pass
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

On Tue, Apr 21, 2020 at 6:03 PM kbuild test robot <lkp@intel.com> wrote:
>
> Hi Baolin,
>
> I love your patch! Yet something to improve:
>
> [auto build test ERROR on ljones-mfd/for-mfd-next]
> [also build test ERROR on arm-soc/for-next linus/master linux/master v5.7-rc2 next-20200420]
> [if your patch is applied to the wrong git tree, please drop us a note to help
> improve the system. BTW, we also suggest to use '--base' option to specify the
> base tree in git format-patch, please see https://stackoverflow.com/a/37406982]
>
> url:    https://github.com/0day-ci/linux/commits/Baolin-Wang/mfd-syscon-Add-Spreadtrum-physical-regmap-bus-support/20200421-035442
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/lee/mfd.git for-mfd-next
> config: x86_64-randconfig-f002-20200421 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a9b137f9ffba8cb25dfd7dd1fb613e8aac121b37)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/mfd/syscon.c:182:31: error: use of undeclared identifier 'sprd_syscon_regmap_bus'
>                    regmap = regmap_init(NULL, &sprd_syscon_regmap_bus, base,
>                                                ^
> >> drivers/mfd/syscon.c:182:10: error: assigning to 'struct regmap *' from incompatible type 'void'
>                    regmap = regmap_init(NULL, &sprd_syscon_regmap_bus, base,
>                           ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
>    2 errors generated.

Ah, sorry, will fix the building errors in next version. Thanks for reporting.

>
> vim +/sprd_syscon_regmap_bus +182 drivers/mfd/syscon.c
>
>    106
>    107  static struct syscon *of_syscon_register(struct device_node *np, bool check_clk)
>    108  {
>    109          struct clk *clk;
>    110          struct syscon *syscon;
>    111          struct regmap *regmap;
>    112          void __iomem *base;
>    113          u32 reg_io_width;
>    114          int ret;
>    115          struct regmap_config syscon_config = syscon_regmap_config;
>    116          struct resource res;
>    117          bool use_phy_regmap_bus = false;
>    118
>    119          syscon = kzalloc(sizeof(*syscon), GFP_KERNEL);
>    120          if (!syscon)
>    121                  return ERR_PTR(-ENOMEM);
>    122
>    123          if (of_address_to_resource(np, 0, &res)) {
>    124                  ret = -ENOMEM;
>    125                  goto err_map;
>    126          }
>    127
>    128          base = ioremap(res.start, resource_size(&res));
>    129          if (!base) {
>    130                  ret = -ENOMEM;
>    131                  goto err_map;
>    132          }
>    133
>    134          /* Parse the device's DT node for an endianness specification */
>    135          if (of_property_read_bool(np, "big-endian"))
>    136                  syscon_config.val_format_endian = REGMAP_ENDIAN_BIG;
>    137          else if (of_property_read_bool(np, "little-endian"))
>    138                  syscon_config.val_format_endian = REGMAP_ENDIAN_LITTLE;
>    139          else if (of_property_read_bool(np, "native-endian"))
>    140                  syscon_config.val_format_endian = REGMAP_ENDIAN_NATIVE;
>    141
>    142          /*
>    143           * search for reg-io-width property in DT. If it is not provided,
>    144           * default to 4 bytes. regmap_init_mmio will return an error if values
>    145           * are invalid so there is no need to check them here.
>    146           */
>    147          ret = of_property_read_u32(np, "reg-io-width", &reg_io_width);
>    148          if (ret)
>    149                  reg_io_width = 4;
>    150
>    151          ret = of_hwspin_lock_get_id(np, 0);
>    152          if (ret > 0 || (IS_ENABLED(CONFIG_HWSPINLOCK) && ret == 0)) {
>    153                  syscon_config.use_hwlock = true;
>    154                  syscon_config.hwlock_id = ret;
>    155                  syscon_config.hwlock_mode = HWLOCK_IRQSTATE;
>    156          } else if (ret < 0) {
>    157                  switch (ret) {
>    158                  case -ENOENT:
>    159                          /* Ignore missing hwlock, it's optional. */
>    160                          break;
>    161                  default:
>    162                          pr_err("Failed to retrieve valid hwlock: %d\n", ret);
>    163                          /* fall-through */
>    164                  case -EPROBE_DEFER:
>    165                          goto err_regmap;
>    166                  }
>    167          }
>    168
>    169          syscon_config.name = of_node_full_name(np);
>    170          syscon_config.reg_stride = reg_io_width;
>    171          syscon_config.val_bits = reg_io_width * 8;
>    172          syscon_config.max_register = resource_size(&res) - reg_io_width;
>    173
>    174           /*
>    175            * The Spreadtrum syscon need register a real physical regmap bus
>    176            * with new atomic bits updating operation instead of using
>    177            * read-modify-write.
>    178            */
>    179          if (IS_ENABLED(CONFIG_ARCH_SPRD) &&
>    180              of_device_is_compatible(np, "sprd,atomic-syscon")) {
>    181                  use_phy_regmap_bus = true;
>  > 182                  regmap = regmap_init(NULL, &sprd_syscon_regmap_bus, base,
>    183                                       &syscon_config);
>    184          } else {
>    185                  regmap = regmap_init_mmio(NULL, base, &syscon_config);
>    186          }
>    187          if (IS_ERR(regmap)) {
>    188                  pr_err("regmap init failed\n");
>    189                  ret = PTR_ERR(regmap);
>    190                  goto err_regmap;
>    191          }
>    192
>    193          if (!use_phy_regmap_bus && check_clk) {
>    194                  clk = of_clk_get(np, 0);
>    195                  if (IS_ERR(clk)) {
>    196                          ret = PTR_ERR(clk);
>    197                          /* clock is optional */
>    198                          if (ret != -ENOENT)
>    199                                  goto err_clk;
>    200                  } else {
>    201                          ret = regmap_mmio_attach_clk(regmap, clk);
>    202                          if (ret)
>    203                                  goto err_attach;
>    204                  }
>    205          }
>    206
>    207          syscon->regmap = regmap;
>    208          syscon->np = np;
>    209
>    210          spin_lock(&syscon_list_slock);
>    211          list_add_tail(&syscon->list, &syscon_list);
>    212          spin_unlock(&syscon_list_slock);
>    213
>    214          return syscon;
>    215
>    216  err_attach:
>    217          if (!IS_ERR(clk))
>    218                  clk_put(clk);
>    219  err_clk:
>    220          regmap_exit(regmap);
>    221  err_regmap:
>    222          iounmap(base);
>    223  err_map:
>    224          kfree(syscon);
>    225          return ERR_PTR(ret);
>    226  }
>    227
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Baolin Wang

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADBw62o4zQ0UBMgSA13TLgb3ZOiBv-CbCS1j7adgUazoREPSzQ%40mail.gmail.com.
