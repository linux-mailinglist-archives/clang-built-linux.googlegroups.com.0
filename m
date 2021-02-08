Return-Path: <clang-built-linux+bncBCRIZROPVQPBBAULQOAQMGQE5ZRIN6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id C341F3129DD
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Feb 2021 06:00:53 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id c63sf11829562qkd.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 07 Feb 2021 21:00:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612760450; cv=pass;
        d=google.com; s=arc-20160816;
        b=JuKxOdDqcGmhqW71s0JZt9bPYtjrC2hFV8/it7xFZf2fRndhs3Jb3whGv5vEoKab7z
         NNCWXT5Kr0fw2AbQ6e3Mco/yeEknOmM+MxW2mHKn23KT8WPG85s5VVO2BZuTPPPOzFr1
         u7P9JLu1yT/ZQkxLs03/QT5nPdOkz3s8q2nN3x3OiCUeIYb9tFBinNALD4JI/sAlR3aX
         +DvRweJi0+SBaxEsrOPr6U/d/3VWFwVmsYk9o/7quMSnwn6VUo2foVykNk08cPEvSN71
         YE7Cw0p62cna56RAL19GTSmseCUwWA7A75UVF7sNZuVBx2hKXLuGqftYIoTqvSUW/7qt
         J4Ug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=TVZPoL0DnxUI2lyOL3CTx4DqxZuC2EQvssGuqGo9le4=;
        b=iX0de8Tbgx0nyhEmwXYE61ZutAfqWdJ/lWt+zecZUsyaD1+6sF/EN6JwyFGs7drszY
         xCgCpWsEoeWpI0L/wdLmTkrshST7WLUhHcg8H12wUE1BBctsLQnnYwRviRovtKxkoswz
         DcKfp4kKsURSsalW12bpwSxHtEsj7O5+RyZbxyrRxUEhV5ZWuzshq6JrK+b3W8owkEMy
         75UuJdCt77kHVlOcCmKU1wdYmq2Hy4SHRJdOyjPAPXfdEFcvznFYJY0ifI+ZboVeK1ya
         IhlMEZRCQ9J1Ew3E0BkkcovdlRTOCnreacLLdKGlcTwFh1KMNckkCTSJOLsyob4QxbqO
         oFuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LY7eqM4I;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TVZPoL0DnxUI2lyOL3CTx4DqxZuC2EQvssGuqGo9le4=;
        b=XpuqvXYd+lEYG6FRakS8XAqw0h5ESiaC6hxf6JHpglIDQcY8IDX3fc2HnNt+Y0ItAY
         H8ET00bzzwqK+L5cMD/j4cPgQ4c0LSDKQkx1XXaNSURQgXbDFLyVBSXJxNb7ASexS2Fk
         s6+Ha0d35B6KHDjquNJsrbFixNCyEiaAMILveXHhd93GpIQh8XgNp9XrKp0sdE8VibaY
         g5z7w/XxWGIkhDZcUDPW7YhmComyJb2CbJuFRUds8e051hUPWktRRy0bZcE3jhBs3wPQ
         OqTutERVNQkhaOQNGU4SHQvWnIMiMzjgEu9v67ycHXX0Ha86C1KTpAZpWqJpQTuib2Li
         r7YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TVZPoL0DnxUI2lyOL3CTx4DqxZuC2EQvssGuqGo9le4=;
        b=IOvP23FT5wvNz8rz6zzHZWKZMWGlD7LroRF914lUorXs/byAVHA0Nh+9r04EmsYd/K
         4UqyDm50IbuZT1xLBkvj1J1tEzQx5C7gbnp/6nowXCCC9OOUjZbnD19rUYWE4ZSMLYY2
         f8agmdI2aiUiaLG8ad6915OCgOenUmGA9kAu8yE+x/OF7dZra9PUqXXAbDdw9Z5UG9mQ
         Ngn7MYcSDXQr/8BYc8/pAsUY7PZBhpNAl2Qw7vbWKaFJrBxOO5GcfNPaWB/jJUXsvE2p
         8tUfNinvKWqEcBZCVHrru6iqkaZ10ocbuiDg4dSWEwuFeW6pUFcQtt3l7bfZUN58bMvH
         ox6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301L5OXIcAL8IuwcdDTyWY//HRClIZuIG8FFPwvd+4S0e422HFr
	pgB5KtQb2bY5aCLDryTbZNI=
X-Google-Smtp-Source: ABdhPJzzL/LdOZuBXqdac2x28GBaH3lFwG+zsY5JpiYkP/S2yB/+KSM0GHAcZOsLSpy0tH1vWsIsKg==
X-Received: by 2002:a05:6214:10e7:: with SMTP id q7mr7692980qvt.16.1612760450489;
        Sun, 07 Feb 2021 21:00:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:1c2:: with SMTP id t2ls5882527qtw.10.gmail; Sun, 07
 Feb 2021 21:00:50 -0800 (PST)
X-Received: by 2002:ac8:538a:: with SMTP id x10mr2054433qtp.166.1612760450136;
        Sun, 07 Feb 2021 21:00:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612760450; cv=none;
        d=google.com; s=arc-20160816;
        b=JmDYVWldmkv2HQVadf3PYPFKn4HONd8y89sCg4WW67OwRIFBDSkDxejcorqN99x6sG
         7GXXGfFX6zBtNEsMwcOXJJ3qp5HBlLl5ycf6gv6vjL05vHbWaFQBXxOib9qAoEMzkEWh
         Fv/mofdSnPX+TmtYQZuuxnxjSAgiDL8QapPi+0jq19JohbKu/q9Pcnh5FcMSqdL9e5RA
         GBrxaGcMY7I2hcPPXXLeihanfBRS26NAEteVFSZ5m6CKldDDkHCjxlMboJeJ/NDDlLXH
         diLlDyswoecYEj47hUa48ewaHFJfTjWwg1V6B8V1UGJcM/QZFTB4sTl9mSrfx2a4xZCR
         4Vsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=mUDL/WmqX24EkRBa4QdzQZhiI7NIshJxn07vKLtmMHA=;
        b=aVKpieNePJgK28Hc4QbZkNVffmZNDnHdfKkZVwU9mg9p7dL1jBxBMQXIbp9fpI/hEU
         GiPJeUmFycio5RcBwxFF9qUr6PJGwyZaqHTKwvikFiqvE0EiUbXMZa/BleAJy4EIjr64
         qBucOnm7Oj4M6lkg6YvtkREGKD6IGv1DSTUWgaw7hjEhrnH62X/FOHNQv0wKAI7Lxg14
         FXy/4tWLbdJmN+PCX6z59Vv5xPA1x65ukDh6lveK4b9Cu/XglAtgODDKCqpUM89Cnn4u
         8O8aXH5zHDst07dZXRMdE5klIRHhiXOBzVgKwJ8VNjK2CznK8aA3hkUm8mT5/GYORoDc
         X+bQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=LY7eqM4I;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::62d as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x62d.google.com (mail-pl1-x62d.google.com. [2607:f8b0:4864:20::62d])
        by gmr-mx.google.com with ESMTPS id b16si254030qtr.2.2021.02.07.21.00.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 07 Feb 2021 21:00:50 -0800 (PST)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::62d as permitted sender) client-ip=2607:f8b0:4864:20::62d;
Received: by mail-pl1-x62d.google.com with SMTP id g3so7183243plp.2
        for <clang-built-linux@googlegroups.com>; Sun, 07 Feb 2021 21:00:50 -0800 (PST)
X-Received: by 2002:a17:902:a5c9:b029:e0:8ef:1633 with SMTP id t9-20020a170902a5c9b02900e008ef1633mr14728621plq.13.1612760449162;
        Sun, 07 Feb 2021 21:00:49 -0800 (PST)
Received: from localhost ([122.172.59.240])
        by smtp.gmail.com with ESMTPSA id 123sm17795177pge.88.2021.02.07.21.00.47
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 07 Feb 2021 21:00:47 -0800 (PST)
Date: Mon, 8 Feb 2021 10:30:45 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/opp/of.c:842:12: warning: stack frame size of 2064 bytes
 in function '_of_add_opp_table_v2'
Message-ID: <20210208050045.zjm2s27ye7cxgfxq@vireshk-i7>
References: <202102070420.E5H63fqj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202102070420.E5H63fqj-lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=LY7eqM4I;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::62d
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 07-02-21, 04:09, kernel test robot wrote:
> f47b72a15a9679 drivers/base/power/opp/of.c Viresh Kumar  2016-05-05  841  /* Initializes OPP tables based on new bindings */
> 5ed4cecd75e902 drivers/opp/of.c            Viresh Kumar  2018-09-12 @842  static int _of_add_opp_table_v2(struct device *dev, struct opp_table *opp_table)
> f47b72a15a9679 drivers/base/power/opp/of.c Viresh Kumar  2016-05-05  843  {
> f47b72a15a9679 drivers/base/power/opp/of.c Viresh Kumar  2016-05-05  844  	struct device_node *np;
> 283d55e68d8a0f drivers/opp/of.c            Viresh Kumar  2018-09-07  845  	int ret, count = 0, pstate_count = 0;
> 3ba98324e81add drivers/opp/of.c            Viresh Kumar  2016-11-18  846  	struct dev_pm_opp *opp;

I am not able to figure out why the stack frame warning will shoot off
for this routine, using just pointers, no big allocations on stack..

False positive ?

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210208050045.zjm2s27ye7cxgfxq%40vireshk-i7.
