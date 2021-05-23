Return-Path: <clang-built-linux+bncBCM77JPN2AIRBZHPU2CQMGQEPXRUZ4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id D9B2938D833
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 May 2021 04:03:17 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id 64-20020a6215430000b02902df2a3e11casf9394777pfv.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 22 May 2021 19:03:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621735396; cv=pass;
        d=google.com; s=arc-20160816;
        b=u6J4X1zjkX8fJyxpPX45gJqAMXsrnW4JvY8jyy1+ODlGcJyv4IN+bHT0OZZqHADbse
         /0179LNy9tVV4JKQO8b/xL6Np2DkBBCn6RCrvIOM81B+IGUIA3fVFvt+FAyJN4ITwKPD
         2l0YsxQBzwd50bXGF+G8rXmCDB6ZLh5yYKzffFcj+xKeOhIHE1C/Rs/W2BjKGyo24xVW
         Q4clrXp+0EclD2a7WNzhy6E1LuJcOAoq4gYEaa6r8jzCqKocOwFRatqBH/4f5pgZSjrW
         0DxCDstaNRUYX/ApTLu4gli1aTvXGwJB6bqpehT4QMg6p4cx5ECpTJ2QRKl5Av52SOOx
         c1mw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rGniaNmujPQY2AbZAZB0uMFxrgoeQEg9RyczaX+Pkfg=;
        b=knP1ZVbpQ+HkfbuNz0kkXgevjw7DfQjUJB9lv0DnUkG5jn/ccOL1/E6c1EFl5qEWYM
         9HNsLawVWzfr4fjVjH7Xba2TAphgrPRen6DvSLSjCzc9lQ+LsnPzvQmbIcLLKVVQBgv4
         4apaW7+553SgjB46vLbHzubveFx5Dy56EA4hAb9woAW1oUGQOpOl8KwzwTtQ1DIQ1aMg
         tYK7Ur+zvWM70hlGIqGDB8WXGq70/MekAZHJgnG/8IyhGrqVqK33H17EeRl9mS1Yh0KO
         f0hdPJ1gOykVJse2m/BD5XehDfqThJoTQB0Dm0lwf3eiE32ap+pINum06kbyCU4aaVEa
         YG5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UmaA1luO;
       spf=pass (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=kyletso@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGniaNmujPQY2AbZAZB0uMFxrgoeQEg9RyczaX+Pkfg=;
        b=US8MqboAXXgwaBu7h473/SoS7HC7MtourvrDxrtdffjyUpiOSJWMNTN+W5OZcFecH0
         hqRT3VIKexuG7rBy1wYrWQBcnSq3LlYyujkFJq2lCTPpKjICpq8mxpgks2uolv3+R+Bb
         CVJfv7d3rhjTzBgw4AkuPDS7ODYu/IgspEdT6yqojkurdbpd9CPG4mPF6wlNmc9EhcnB
         4nC/pqiK1mn0rDplIgJT7BlaK0nbSf7lM0hi/whUq8QconZSyiRQzvBpeVHlKQb9urpo
         ww0jPmIe6BfVfTvBDoRnLt1ma0JoUQOYFlvtvNXRyR6VMnevD0szWnMgA8/bwlf6rCdJ
         qg8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rGniaNmujPQY2AbZAZB0uMFxrgoeQEg9RyczaX+Pkfg=;
        b=doZXUlzMv7WibpVNLoZSdQf65stqnfQzBn2GSRYS8wZ9YJEQXB/xJW5cpRfUY6R321
         GNOEmejxB1FqN0sXtdfgBU/40glvcGySOkFrVAzWdf8Rw28mDU/Z5SfaooDIzAR0w+Tu
         bjqmgOzTUBvEQE94pZEaojV+uUToSFE8YYweb+mHZsADN+BYb1DleKc4/Prv5WBPxFPT
         2O+7Oki7GD07jrwQhPGZVkdqA1uH8YVMOy/btL6XWw/Nq3s4NwmpuX8nIsYlwbQNTYjO
         6HDa2uh6594yHkx7jvvgj3XKxi6VUSCbEz78LG3Jxo9LMqpH+DNSLBB+dj5GUE/rWKsp
         /2Mw==
X-Gm-Message-State: AOAM531RnNR0wpDDH5VBwEKSzF8GrPRyTow7vDBJCwhPRYkElcqFRNSX
	ClBAT81dp5JaJYKeEhph8ME=
X-Google-Smtp-Source: ABdhPJz5NtA1xKbCoBAJp3kAAPxYZOQPNFKCMboEL/i8S/bdAfVI9CxfSnCGjddWjDks8v15r6cnbw==
X-Received: by 2002:a17:902:8ec9:b029:ef:5a88:e7cf with SMTP id x9-20020a1709028ec9b02900ef5a88e7cfmr19135138plo.48.1621735396511;
        Sat, 22 May 2021 19:03:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e313:: with SMTP id q19ls6212804plc.2.gmail; Sat, 22
 May 2021 19:03:16 -0700 (PDT)
X-Received: by 2002:a17:902:b683:b029:ee:f0e3:7a50 with SMTP id c3-20020a170902b683b02900eef0e37a50mr18989914pls.7.1621735395956;
        Sat, 22 May 2021 19:03:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621735395; cv=none;
        d=google.com; s=arc-20160816;
        b=Vd42k5J5NDEice913usb5RK9VzYbF2jpE/VDJkhwFo2a7HNYtahlWXBTxTScwODBPS
         Q0xhCHA8srr9foLjeXexqmctNl9bKGgGMKuv0OVzFtTDCFza9o3BnxjRGQSOXWEaZsvt
         L6c6+5qdJfkvi9AQmy3KJFPxlotxjC/QNXofLF1/6yWxa5gSJag2vlvxNTEjK1Q1zinc
         FftwMExxdbi1YWw72UZQ/MvnP3vSFWbkCrQXhMkXyBRsgWpXBmrBxlSeXMKXVU15AhXW
         4WuO06bwhNa+r6WCwvVxvnudKGIcSVZaUvrYbYATT3iuNCJVa/skEI7LnMrzRfXL5QIg
         ImRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=JjnZ0zgQnYl6m6VonMK5rveRNEm88gewG9BMTvlY4rc=;
        b=LWpbC2WRl4KTCgqxVHkjtwqzi4tiEGe4sG6nZ8dGS6o4QUYy6tbmC6PbX43Xwz97N1
         BIjxM7rkZv6P4/DIM0olC93dzGXjiTgxIBFXcF4o8w3tviSTyFgjfQpBZGIVbehMPt9t
         nYNJGjaGOWrAV+N/k3lMBbUleU/1CSVlJXeXxob9F4i4dRSJXHjOt//KInyEoNez4ynF
         yBVor+P5WFPga/Xwk0GGxnultCfvs0tR5V+fe+22ySWpuY06j/x3TTMRWLCC44IhMgSK
         7WnvixJ3Okn30T6377JOeRKilS46q+LvfqXwneBJyLLgd7wERfXhTlXE1thBoAcb8JVP
         DD0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=UmaA1luO;
       spf=pass (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::72b as permitted sender) smtp.mailfrom=kyletso@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x72b.google.com (mail-qk1-x72b.google.com. [2607:f8b0:4864:20::72b])
        by gmr-mx.google.com with ESMTPS id i2si1350384pju.2.2021.05.22.19.03.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 22 May 2021 19:03:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::72b as permitted sender) client-ip=2607:f8b0:4864:20::72b;
Received: by mail-qk1-x72b.google.com with SMTP id i5so16561549qkf.12
        for <clang-built-linux@googlegroups.com>; Sat, 22 May 2021 19:03:15 -0700 (PDT)
X-Received: by 2002:a05:620a:22f2:: with SMTP id p18mr21711713qki.410.1621735394659;
 Sat, 22 May 2021 19:03:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210521130121.1470334-2-kyletso@google.com> <202105230455.faAHm2qT-lkp@intel.com>
In-Reply-To: <202105230455.faAHm2qT-lkp@intel.com>
From: "'Kyle Tso' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 23 May 2021 10:02:58 +0800
Message-ID: <CAGZ6i=2SDOWMHVOt0B6bn5=sxKgPR2cvgEX4uXXxJxN67GtLEg@mail.gmail.com>
Subject: Re: [PATCH 1/2] usb: typec: tcpm: Properly interrupt VDM AMS
To: kernel test robot <lkp@intel.com>
Cc: Guenter Roeck <linux@roeck-us.net>, Heikki Krogerus <heikki.krogerus@linux.intel.com>, 
	Greg KH <gregkh@linuxfoundation.org>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Badhri Jagan Sridharan <badhri@google.com>, USB <linux-usb@vger.kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: kyletso@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=UmaA1luO;       spf=pass
 (google.com: domain of kyletso@google.com designates 2607:f8b0:4864:20::72b
 as permitted sender) smtp.mailfrom=kyletso@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Kyle Tso <kyletso@google.com>
Reply-To: Kyle Tso <kyletso@google.com>
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

On Sun, May 23, 2021 at 4:23 AM kernel test robot <lkp@intel.com> wrote:
>
> Hi Kyle,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on usb/usb-testing]
> [also build test WARNING on v5.13-rc2 next-20210521]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Kyle-Tso/Fix-some-VDM-AMS-handling/20210522-205431
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/usb.git usb-testing
> config: x86_64-randconfig-a006-20210523 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project e84a9b9bb3051c35dea993cdad7b3d2575638f85)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/6e05980ae46e87d0a409e1e653658ae6fd7b3a32
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Kyle-Tso/Fix-some-VDM-AMS-handling/20210522-205431
>         git checkout 6e05980ae46e87d0a409e1e653658ae6fd7b3a32
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/usb/typec/tcpm/tcpm.c:2326:19: warning: equality comparison result unused [-Wunused-comparison]
>                    port->vdm_state == VDM_STATE_ERR_BUSY;
>                    ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
>    drivers/usb/typec/tcpm/tcpm.c:2326:19: note: use '=' to turn this equality comparison into an assignment
>                    port->vdm_state == VDM_STATE_ERR_BUSY;
>                                    ^~
>                                    =
>    1 warning generated.
>
>

Fixed in v2
https://lore.kernel.org/linux-usb/20210523015855.1785484-1-kyletso@google.com/

thanks,
Kyle

> vim +2326 drivers/usb/typec/tcpm/tcpm.c
>
>   2313
>   2314  static void tcpm_pd_data_request(struct tcpm_port *port,
>   2315                                   const struct pd_message *msg)
>   2316  {
>   2317          enum pd_data_msg_type type = pd_header_type_le(msg->header);
>   2318          unsigned int cnt = pd_header_cnt_le(msg->header);
>   2319          unsigned int rev = pd_header_rev_le(msg->header);
>   2320          unsigned int i;
>   2321          enum frs_typec_current partner_frs_current;
>   2322          bool frs_enable;
>   2323          int ret;
>   2324
>   2325          if (tcpm_vdm_ams(port) && type != PD_DATA_VENDOR_DEF) {
> > 2326                  port->vdm_state == VDM_STATE_ERR_BUSY;
>   2327                  tcpm_ams_finish(port);
>   2328                  mod_vdm_delayed_work(port, 0);
>   2329          }
>   2330
>   2331          switch (type) {
>   2332          case PD_DATA_SOURCE_CAP:
>   2333                  for (i = 0; i < cnt; i++)
>   2334                          port->source_caps[i] = le32_to_cpu(msg->payload[i]);
>   2335
>   2336                  port->nr_source_caps = cnt;
>   2337
>   2338                  tcpm_log_source_caps(port);
>   2339
>   2340                  tcpm_validate_caps(port, port->source_caps,
>   2341                                     port->nr_source_caps);
>   2342
>   2343                  /*
>   2344                   * Adjust revision in subsequent message headers, as required,
>   2345                   * to comply with 6.2.1.1.5 of the USB PD 3.0 spec. We don't
>   2346                   * support Rev 1.0 so just do nothing in that scenario.
>   2347                   */
>   2348                  if (rev == PD_REV10) {
>   2349                          if (port->ams == GET_SOURCE_CAPABILITIES)
>   2350                                  tcpm_ams_finish(port);
>   2351                          break;
>   2352                  }
>   2353
>   2354                  if (rev < PD_MAX_REV)
>   2355                          port->negotiated_rev = rev;
>   2356
>   2357                  if (port->pwr_role == TYPEC_SOURCE) {
>   2358                          if (port->ams == GET_SOURCE_CAPABILITIES)
>   2359                                  tcpm_pd_handle_state(port, SRC_READY, NONE_AMS, 0);
>   2360                          /* Unexpected Source Capabilities */
>   2361                          else
>   2362                                  tcpm_pd_handle_msg(port,
>   2363                                                     port->negotiated_rev < PD_REV30 ?
>   2364                                                     PD_MSG_CTRL_REJECT :
>   2365                                                     PD_MSG_CTRL_NOT_SUPP,
>   2366                                                     NONE_AMS);
>   2367                  } else if (port->state == SNK_WAIT_CAPABILITIES) {
>   2368                  /*
>   2369                   * This message may be received even if VBUS is not
>   2370                   * present. This is quite unexpected; see USB PD
>   2371                   * specification, sections 8.3.3.6.3.1 and 8.3.3.6.3.2.
>   2372                   * However, at the same time, we must be ready to
>   2373                   * receive this message and respond to it 15ms after
>   2374                   * receiving PS_RDY during power swap operations, no matter
>   2375                   * if VBUS is available or not (USB PD specification,
>   2376                   * section 6.5.9.2).
>   2377                   * So we need to accept the message either way,
>   2378                   * but be prepared to keep waiting for VBUS after it was
>   2379                   * handled.
>   2380                   */
>   2381                          port->ams = POWER_NEGOTIATION;
>   2382                          port->in_ams = true;
>   2383                          tcpm_set_state(port, SNK_NEGOTIATE_CAPABILITIES, 0);
>   2384                  } else {
>   2385                          if (port->ams == GET_SOURCE_CAPABILITIES)
>   2386                                  tcpm_ams_finish(port);
>   2387                          tcpm_pd_handle_state(port, SNK_NEGOTIATE_CAPABILITIES,
>   2388                                               POWER_NEGOTIATION, 0);
>   2389                  }
>   2390                  break;
>   2391          case PD_DATA_REQUEST:
>   2392                  /*
>   2393                   * Adjust revision in subsequent message headers, as required,
>   2394                   * to comply with 6.2.1.1.5 of the USB PD 3.0 spec. We don't
>   2395                   * support Rev 1.0 so just reject in that scenario.
>   2396                   */
>   2397                  if (rev == PD_REV10) {
>   2398                          tcpm_pd_handle_msg(port,
>   2399                                             port->negotiated_rev < PD_REV30 ?
>   2400                                             PD_MSG_CTRL_REJECT :
>   2401                                             PD_MSG_CTRL_NOT_SUPP,
>   2402                                             NONE_AMS);
>   2403                          break;
>   2404                  }
>   2405
>   2406                  if (rev < PD_MAX_REV)
>   2407                          port->negotiated_rev = rev;
>   2408
>   2409                  if (port->pwr_role != TYPEC_SOURCE || cnt != 1) {
>   2410                          tcpm_pd_handle_msg(port,
>   2411                                             port->negotiated_rev < PD_REV30 ?
>   2412                                             PD_MSG_CTRL_REJECT :
>   2413                                             PD_MSG_CTRL_NOT_SUPP,
>   2414                                             NONE_AMS);
>   2415                          break;
>   2416                  }
>   2417
>   2418                  port->sink_request = le32_to_cpu(msg->payload[0]);
>   2419
>   2420                  if (port->vdm_sm_running && port->explicit_contract) {
>   2421                          tcpm_pd_handle_msg(port, PD_MSG_CTRL_WAIT, port->ams);
>   2422                          break;
>   2423                  }
>   2424
>   2425                  if (port->state == SRC_SEND_CAPABILITIES)
>   2426                          tcpm_set_state(port, SRC_NEGOTIATE_CAPABILITIES, 0);
>   2427                  else
>   2428                          tcpm_pd_handle_state(port, SRC_NEGOTIATE_CAPABILITIES,
>   2429                                               POWER_NEGOTIATION, 0);
>   2430                  break;
>   2431          case PD_DATA_SINK_CAP:
>   2432                  /* We don't do anything with this at the moment... */
>   2433                  for (i = 0; i < cnt; i++)
>   2434                          port->sink_caps[i] = le32_to_cpu(msg->payload[i]);
>   2435
>   2436                  partner_frs_current = (port->sink_caps[0] & PDO_FIXED_FRS_CURR_MASK) >>
>   2437                          PDO_FIXED_FRS_CURR_SHIFT;
>   2438                  frs_enable = partner_frs_current && (partner_frs_current <=
>   2439                                                       port->new_source_frs_current);
>   2440                  tcpm_log(port,
>   2441                           "Port partner FRS capable partner_frs_current:%u port_frs_current:%u enable:%c",
>   2442                           partner_frs_current, port->new_source_frs_current, frs_enable ? 'y' : 'n');
>   2443                  if (frs_enable) {
>   2444                          ret  = port->tcpc->enable_frs(port->tcpc, true);
>   2445                          tcpm_log(port, "Enable FRS %s, ret:%d\n", ret ? "fail" : "success", ret);
>   2446                  }
>   2447
>   2448                  port->nr_sink_caps = cnt;
>   2449                  port->sink_cap_done = true;
>   2450                  if (port->ams == GET_SINK_CAPABILITIES)
>   2451                          tcpm_set_state(port, ready_state(port), 0);
>   2452                  /* Unexpected Sink Capabilities */
>   2453                  else
>   2454                          tcpm_pd_handle_msg(port,
>   2455                                             port->negotiated_rev < PD_REV30 ?
>   2456                                             PD_MSG_CTRL_REJECT :
>   2457                                             PD_MSG_CTRL_NOT_SUPP,
>   2458                                             NONE_AMS);
>   2459                  break;
>   2460          case PD_DATA_VENDOR_DEF:
>   2461                  tcpm_handle_vdm_request(port, msg->payload, cnt);
>   2462                  break;
>   2463          case PD_DATA_BIST:
>   2464                  port->bist_request = le32_to_cpu(msg->payload[0]);
>   2465                  tcpm_pd_handle_state(port, BIST_RX, BIST, 0);
>   2466                  break;
>   2467          case PD_DATA_ALERT:
>   2468                  tcpm_handle_alert(port, msg->payload, cnt);
>   2469                  break;
>   2470          case PD_DATA_BATT_STATUS:
>   2471          case PD_DATA_GET_COUNTRY_INFO:
>   2472                  /* Currently unsupported */
>   2473                  tcpm_pd_handle_msg(port, port->negotiated_rev < PD_REV30 ?
>   2474                                     PD_MSG_CTRL_REJECT :
>   2475                                     PD_MSG_CTRL_NOT_SUPP,
>   2476                                     NONE_AMS);
>   2477                  break;
>   2478          default:
>   2479                  tcpm_pd_handle_msg(port, port->negotiated_rev < PD_REV30 ?
>   2480                                     PD_MSG_CTRL_REJECT :
>   2481                                     PD_MSG_CTRL_NOT_SUPP,
>   2482                                     NONE_AMS);
>   2483                  tcpm_log(port, "Unrecognized data message type %#x", type);
>   2484                  break;
>   2485          }
>   2486  }
>   2487
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGZ6i%3D2SDOWMHVOt0B6bn5%3DsxKgPR2cvgEX4uXXxJxN67GtLEg%40mail.gmail.com.
