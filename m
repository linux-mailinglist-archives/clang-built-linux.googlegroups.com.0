Return-Path: <clang-built-linux+bncBD3JNNMDTMEBBVN2272QKGQE52YN2II@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3a.google.com (mail-oo1-xc3a.google.com [IPv6:2607:f8b0:4864:20::c3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C6151CBAB9
	for <lists+clang-built-linux@lfdr.de>; Sat,  9 May 2020 00:29:42 +0200 (CEST)
Received: by mail-oo1-xc3a.google.com with SMTP id t23sf2366605oor.1
        for <lists+clang-built-linux@lfdr.de>; Fri, 08 May 2020 15:29:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588976981; cv=pass;
        d=google.com; s=arc-20160816;
        b=oxLQZmbDIs/bmfz6471/a5jg1qNu9TeTJLAxKNNVMZ+RUkHtxxG3jSzoA5RSDofDiG
         R686CeEoB/x2xsq8MOUu32btksXNedkXfaXdMp+oI+fUwVGTM3+tlnnukE5FMjGEHdWO
         YnkTnW74O6R9Dkfrwg6GL6JulFObkC/egbmYOdsycWaV8ZzU6EPrbinT75hKzA5UypdB
         1bjFIDKEDmTjiuxSkg63SHClfzSNL4hdy7Dbb1SyxEYgQuMRUNHtIn+whucK0lRSruAP
         FQ/LXv7ELCFpGWe8zJEX8jB1CQD4s4WMs0u9EYPVOF2jzm9G14LX3BivsxorFc35+0HX
         ietA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=8eQSyzWnGGHLdvgIWYSlrHLwTKYEuxb5wdQECK2cX4o=;
        b=D540UH0UytA7bVdigRAMkU4YSjf+3nysBvIdkcqO32ywJHDYHSRUFHnUw0eCfdfh22
         2rgm/y+MgzeljFpLf2ARS8JgWbUP+KqqYn7YrRBjLpprxPISnmVU5LKAh/yoVPhqc1MN
         Sb8VWEA/KIY1TecTCnTDoCphfYwQzr+skaJV0lOCJvx0YTnAivfeggZf+zoqVawyZnrT
         C0ko1+SQNNeQl0+pEM60mlfPYdjxQq//T9f8AWKhLV6qkBxrtLwZ9Yp8Mx3fL8E2m7Rp
         KavJzuN7TZxSEHMuelVqpJD7DkSosVuamQlkjvjqlfkv6ee3Vkqb5uZTT+DK6rIQzSGz
         8zng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8eQSyzWnGGHLdvgIWYSlrHLwTKYEuxb5wdQECK2cX4o=;
        b=lMjcrkgrNhDGiEGw1Bz2w7LxBFoAlu1Kwvw0AE0xSCKTagvYNrwh4Dw4hFKcNr2BjP
         mZMqjzPbyvYLTCqKeNilHAmmNsmg/iqwNBfj4aSBBG2E+OJZxyFlvcdkNznIT1C9GOVg
         cUz4i3/VJSV7TN0LN/+Pj6Ej5lDDWXiOrCJGHZtX9Kqapj2WVx7SNoBvCzFC7vVuiXQC
         4SUOg8HIAhJQtmjMunUC+CRD6kToi1rmCKNMzv93hI3UlTUXajYwSKyZ6CNc/wHec79x
         GNprMKDySVzoeXZEVobbD8ArEqUpPO1fDWaJD7vPW94RlTOrh5YdrxvDIAziFbvRxF30
         sIgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8eQSyzWnGGHLdvgIWYSlrHLwTKYEuxb5wdQECK2cX4o=;
        b=ZU/P84kCGNSACXkSfIBpZl+2rE2i5KJMMzRGD3qud8V9NCcOaokoVR3//BE2kDYa/3
         zmVEf8C9pNKYbaDtkQZKm+0P4Br3huGDrthGW3KLyQttuFw/duRdlTKydteBxwuhWR5H
         cHDgD9h3hetF2wPXF9bDFYjQ1bC4PiGGCBbeStkzIJgW/9ar11C3Lp31AhtSSYM4o9KX
         qMDJi6IPTdOcMf/bxtP/DrFCfbGJykgYkiPDyeNfIJREowH/MgQLDfGI3h0xMgeRvSCk
         SxM36AkdxZYCoH0Z87l1uV8YV9VVfdrjJpTWPX3yA+xyq5VilhsVFn6Od5cduKdrh/LB
         ozZw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZm/X2s7v8XKJdQ+L7YRHqWrmLWDHb+Gt0BtsSS/o9hsFBIG+7K
	wepkaw6U2NxBffhN9Yux6lw=
X-Google-Smtp-Source: APiQypI8tJz2zsNS2SbNkLADa3NugQ5zQPoyXR0eYVGgavQbxilq4I8qaNZ0CBEW13ZhGIGDTBR5ng==
X-Received: by 2002:aca:1a11:: with SMTP id a17mr3464152oia.160.1588976981268;
        Fri, 08 May 2020 15:29:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f456:: with SMTP id s83ls2604171oih.11.gmail; Fri, 08
 May 2020 15:29:40 -0700 (PDT)
X-Received: by 2002:aca:54d6:: with SMTP id i205mr12499181oib.109.1588976980874;
        Fri, 08 May 2020 15:29:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588976980; cv=none;
        d=google.com; s=arc-20160816;
        b=kr27XU18sgWoNQx2qBtut6rhf5JvNXqDZNjjTmiKatlPY2UC9kYRTICadPsUndvgr0
         +HB7ycXDHs6wCTnf1QmiIde1Wa1zcItCtDR6JtXvC8KQ63CpQ1uHSteG9HYq7uUlfNpm
         cuVa/9PQhzVsNNKqVB3KierdqzQZEUpi4LJf1i5f3iMpsAFGsxbS6utBJ8G0BBbGV5lm
         gj5JHWB+i25qK+hrdEkj/HMngSGw+88u8hs95Ww9qx5pyqVNA1nFPCTW0KYH8a1e1AwF
         EhxwKTJ6CDGpWC/twZI3BEAp/TppGXATo6Q/LbtNDFlNMEIceA8qnUubI9A6rDJSsNY6
         Sg2w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject;
        bh=gKbOb4boJ7z+2oCHWb7R40Fkbb6M7I9TRXxhkxZKIE8=;
        b=RhsffI9QS83vZuFRhoKUolfOfTX/fgcZE6RDkmRVG7SfPUMUaTX5qNk7kbFImPA4Bk
         sSqvnL550O2eAP0yNzyA+hDCaOTX82MagAS7zo3bv56phBc2nULf1TA+qBe1+YxqmwHu
         KoBtMcU0NP87VmRAp/OED4y6dH8wZcqL9jfZOs4LrLosMoSR2vOtDwVn1icIJdzIp9/K
         h5MWePDzCLRybZjSFDtynncX8Grh/iM+EBY/Fwgk496qn3Qfx/HpGkFyWPpo1BLltBQj
         nm00qJ8/NXfQpwehz4yT54yYzs7RKdYCcvqcaXt8BIfCHPnHs3fRzx1e1FpHHs0Fb5fT
         TV8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com. [209.85.210.195])
        by gmr-mx.google.com with ESMTPS id k65si733153oih.1.2020.05.08.15.29.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 15:29:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as permitted sender) client-ip=209.85.210.195;
Received: by mail-pf1-f195.google.com with SMTP id x77so1692244pfc.0
        for <clang-built-linux@googlegroups.com>; Fri, 08 May 2020 15:29:40 -0700 (PDT)
X-Received: by 2002:aa7:951b:: with SMTP id b27mr5215090pfp.2.1588976979981;
        Fri, 08 May 2020 15:29:39 -0700 (PDT)
Received: from ?IPv6:2601:647:4000:d7:89ed:1db3:8c60:ba90? ([2601:647:4000:d7:89ed:1db3:8c60:ba90])
        by smtp.gmail.com with ESMTPSA id o11sm2109675pgp.62.2020.05.08.15.29.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 May 2020 15:29:39 -0700 (PDT)
Subject: Re: [PATCH v5 02/11] qla2xxx: Suppress two recently introduced
 compiler warnings
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 kbuild test robot <lkp@intel.com>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 "James E . J . Bottomley" <jejb@linux.vnet.ibm.com>,
 kbuild-all@lists.01.org,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-scsi <linux-scsi@vger.kernel.org>, Daniel Wagner <dwagner@suse.de>,
 Himanshu Madhani <himanshu.madhani@oracle.com>,
 Hannes Reinecke <hare@suse.de>,
 Rajan Shanmugavelu <rajan.shanmugavelu@oracle.com>,
 Joe Jin <joe.jin@oracle.com>, Nilesh Javali <njavali@marvell.com>,
 Quinn Tran <qutran@marvell.com>
References: <20200507042835.9135-3-bvanassche@acm.org>
 <202005080353.y49Uwj18%lkp@intel.com>
 <CAKwvOdnuXX2xpsz6fxV-qfvj1AqN3V7qyOwtwtCG4NWq+HzfAw@mail.gmail.com>
 <86bcf088-a35d-0a0f-0ba4-5883b1f2d6cb@acm.org>
 <CAK8P3a3PA25WUJp73Yea9xq_ca3uXA9Vz2U=UmHiDhg8FmGiNw@mail.gmail.com>
From: Bart Van Assche <bvanassche@acm.org>
Autocrypt: addr=bvanassche@acm.org; prefer-encrypt=mutual; keydata=
 mQENBFSOu4oBCADcRWxVUvkkvRmmwTwIjIJvZOu6wNm+dz5AF4z0FHW2KNZL3oheO3P8UZWr
 LQOrCfRcK8e/sIs2Y2D3Lg/SL7qqbMehGEYcJptu6mKkywBfoYbtBkVoJ/jQsi2H0vBiiCOy
 fmxMHIPcYxaJdXxrOG2UO4B60Y/BzE6OrPDT44w4cZA9DH5xialliWU447Bts8TJNa3lZKS1
 AvW1ZklbvJfAJJAwzDih35LxU2fcWbmhPa7EO2DCv/LM1B10GBB/oQB5kvlq4aA2PSIWkqz4
 3SI5kCPSsygD6wKnbRsvNn2mIACva6VHdm62A7xel5dJRfpQjXj2snd1F/YNoNc66UUTABEB
 AAG0JEJhcnQgVmFuIEFzc2NoZSA8YnZhbmFzc2NoZUBhY20ub3JnPokBOQQTAQIAIwUCVI67
 igIbAwcLCQgHAwIBBhUIAgkKCwQWAgMBAh4BAheAAAoJEHFcPTXFzhAJ8QkH/1AdXblKL65M
 Y1Zk1bYKnkAb4a98LxCPm/pJBilvci6boefwlBDZ2NZuuYWYgyrehMB5H+q+Kq4P0IBbTqTa
 jTPAANn62A6jwJ0FnCn6YaM9TZQjM1F7LoDX3v+oAkaoXuq0dQ4hnxQNu792bi6QyVdZUvKc
 macVFVgfK9n04mL7RzjO3f+X4midKt/s+G+IPr4DGlrq+WH27eDbpUR3aYRk8EgbgGKvQFdD
 CEBFJi+5ZKOArmJVBSk21RHDpqyz6Vit3rjep7c1SN8s7NhVi9cjkKmMDM7KYhXkWc10lKx2
 RTkFI30rkDm4U+JpdAd2+tP3tjGf9AyGGinpzE2XY1K5AQ0EVI67igEIAKiSyd0nECrgz+H5
 PcFDGYQpGDMTl8MOPCKw/F3diXPuj2eql4xSbAdbUCJzk2ETif5s3twT2ER8cUTEVOaCEUY3
 eOiaFgQ+nGLx4BXqqGewikPJCe+UBjFnH1m2/IFn4T9jPZkV8xlkKmDUqMK5EV9n3eQLkn5g
 lco+FepTtmbkSCCjd91EfThVbNYpVQ5ZjdBCXN66CKyJDMJ85HVr5rmXG/nqriTh6cv1l1Js
 T7AFvvPjUPknS6d+BETMhTkbGzoyS+sywEsQAgA+BMCxBH4LvUmHYhpS+W6CiZ3ZMxjO8Hgc
 ++w1mLeRUvda3i4/U8wDT3SWuHcB3DWlcppECLkAEQEAAYkBHwQYAQIACQUCVI67igIbDAAK
 CRBxXD01xc4QCZ4dB/0QrnEasxjM0PGeXK5hcZMT9Eo998alUfn5XU0RQDYdwp6/kMEXMdmT
 oH0F0xB3SQ8WVSXA9rrc4EBvZruWQ+5/zjVrhhfUAx12CzL4oQ9Ro2k45daYaonKTANYG22y
 //x8dLe2Fv1By4SKGhmzwH87uXxbTJAUxiWIi1np0z3/RDnoVyfmfbbL1DY7zf2hYXLLzsJR
 mSsED/1nlJ9Oq5fALdNEPgDyPUerqHxcmIub+pF0AzJoYHK5punqpqfGmqPbjxrJLPJfHVKy
 goMj5DlBMoYqEgpbwdUYkH6QdizJJCur4icy8GUNbisFYABeoJ91pnD4IGei3MTdvINSZI5e
Message-ID: <040756ba-81ea-64e4-6a11-85608b871b88@acm.org>
Date: Fri, 8 May 2020 15:29:37 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a3PA25WUJp73Yea9xq_ca3uXA9Vz2U=UmHiDhg8FmGiNw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: bvanassche@acm.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of bart.vanassche@gmail.com designates 209.85.210.195 as
 permitted sender) smtp.mailfrom=bart.vanassche@gmail.com
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

On 2020-05-08 14:25, Arnd Bergmann wrote:
> On Fri, May 8, 2020 at 1:16 AM Bart Van Assche <bvanassche@acm.org> wrote:
>>
>> On 2020-05-07 15:00, Nick Desaulniers wrote:
>>> On Thu, May 7, 2020 at 12:18 PM kbuild test robot <lkp@intel.com> wrote:
>>>> All errors (new ones prefixed by >>):
>>>>
>>>>    In file included from drivers/scsi/qla2xxx/qla_dbg.c:77:
>>>>>> include/trace/events/qla.h:13:32: error: unknown warning group '-Wsuggest-attribute=format', ignored [-Werror,-Wunknown-warning-option]
>>>>    #pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
>>>>                                   ^
>>>
>>> Hi Bart,
>>> These compiler specific pragma's are not toolchain portable.  You'll
>>> need to wrap them in:
>>> #ifndef __clang__
>>> preprocessor macros, or I think we have a pragma helper in tree that
>>> helps with compiler specific pragmas.  IIRC it uses _Pragma to define
>>> pragmas in macros.
>> Hi Nick,
>>
>> Thanks for the feedback. I will have a look at _Pragma() and see what
>> the best way is to suppress this warning.
> 
> The __diag_ignore() macro in linux/compiler.h should work for this.

Thanks Arnd, that's good to know. Is using __diag_ignore() mandatory in
this case? The following construct seems to work fine with both gcc and
clang:

 #define QLA_MSG_MAX 256

+#pragma GCC diagnostic push
+#ifndef __clang__
+#pragma GCC diagnostic ignored "-Wsuggest-attribute=format"
+#endif
+
 DECLARE_EVENT_CLASS(qla_log_event,
 	TP_PROTO(const char *buf,
 		struct va_format *vaf),
@@ -27,6 +32,8 @@ DECLARE_EVENT_CLASS(qla_log_event,
 	TP_printk("%s %s", __get_str(buf), __get_str(msg))
 );

+#pragma GCC diagnostic pop
+
 DEFINE_EVENT(qla_log_event, ql_dbg_log,
 	TP_PROTO(const char *buf, struct va_format *vaf),
 	TP_ARGS(buf, vaf)

Bart.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/040756ba-81ea-64e4-6a11-85608b871b88%40acm.org.
