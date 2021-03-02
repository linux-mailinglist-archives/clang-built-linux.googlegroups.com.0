Return-Path: <clang-built-linux+bncBDPZFQ463EFRBWPX7GAQMGQEIU7D3CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A3A732A896
	for <lists+clang-built-linux@lfdr.de>; Tue,  2 Mar 2021 18:54:34 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id x6sf5908027ioj.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 02 Mar 2021 09:54:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614707673; cv=pass;
        d=google.com; s=arc-20160816;
        b=WwrizgIbDsVP56/midYHoub8Wce8asg9Wj5+jCf0zxdtnzl2B/Ke2MkZ2MnbFTp22j
         /FlqD5z4ELQ/DnYaQJ1pJKraquOes+YrckmIPfEVsjbhJJtD3BqoYOHCFf99MbJfjmev
         tmm38+bh5liyl3R+8mOzNQGhwrLYv+nr2BjH1LdZuLMlb7EmmlTS7u6UGI6hzGE8cJiF
         Cv/q446QSX23hmtiuiuGjx4A8FraMr8NyV+hvSyS2XmoG/WDUY7q95aPCNEpjGp5bZ5+
         JMmEYPQBB2gCmJ5KjBBHgyrmOY+p6b9w2DvjO3sT7Fre48sJk0aWLlK/QYB5gztkeRY5
         xxJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=cQP4V51g5BvdFQa2KJmCCsAwFCJ2kGSPe/S4Wxi7ogE=;
        b=OmvN1ByophWmKgncaNCsYwVBDleZNDU7G4DY9jD0NEnSMbBptJMbP1b0z/5+czt3LI
         yiE2NPsThiohBtWMe+GeZlviaEARnh6Mil9VmSoIlmktfZlsU2LCn3ZJTi5EiUTsUUoT
         VGG/lUcnuBw9dwpkwo//LYMkT7axEequsduY19DtgR48/E7+NgQHGBCb+3ZDm5eecLWV
         kRLEluAROOMyb9mK8o2o+ngwhwxBQvkhHrbEAfJfO1jev/8wrzRkxJEJEddnrLRIBLOD
         NuqqPwC1aFlHZ3WCVrJx109hju4ZwAlDDf1qsVeYwGroYAS8KfZNjtQu25+Ah7xHG/a8
         4itQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R8IMffRw;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cQP4V51g5BvdFQa2KJmCCsAwFCJ2kGSPe/S4Wxi7ogE=;
        b=TKL926n031LarpWwYiJqtXQn/GK+NI8EUTW9nltVt/imN3L325I8BNi9j28hjVCeOi
         Ay3Bre1rhLn0RPgZusxoCvZamtSAc9TuOoNBllTC/4KdP2svceMWuCYIbgDqd81vC6L4
         4WK6fEHmpU2RSxFIXB5GJUgXw5uliWLH3pbmWggfZfZQkOGjJtZa8FOo1Jo2Vg5Xdglg
         kphDeZrYOvw7pjtnx9AR0jigBkRZiyO83Yio3UP6n4FFWmkWJ0WB6154II4QoPzINgVS
         SB+x06U5F7Pw8YIB1dfo7+MqVxH9y+lYMVSy5llKh0QJjwg/mzZ9q+ycAYWdvym2xSnx
         HM9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cQP4V51g5BvdFQa2KJmCCsAwFCJ2kGSPe/S4Wxi7ogE=;
        b=MKT1uv/70TUCSvPCbmJqtKtGxLgCOL8UbIZW/ljIB2sWOVky+6FwBV07UHq1WyAO5F
         Yq3TDkCcx9AvWZZndA9denWT+tfbu/anrVResQvRoC9utXbuVyKF4mzpRmdA49pN4YGV
         U97uZmdPYe3le8HrPIAlk7AX4yLzM/a1VTRWlpBrqa3W1N/2SZC7n7VtQPxn8Fw6shiZ
         6JB5u3nFnL8FS2LZ9isLaUHfUACqNfBJU38btheAmq+1ebY65VsNadAgc7MTog7sSaK6
         KZxMHZDLHeoMhNdtwUsdv/t35ayBCLj1wtejjfVVOFjGOPsoppNFFZ4XrELeCiiR6fFn
         sl8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cQP4V51g5BvdFQa2KJmCCsAwFCJ2kGSPe/S4Wxi7ogE=;
        b=aMAhycBpkgijwxCpENJX3gzNJ+DDsWYj/1um6MISkkDzEqaPwWWqqItzemZO6ywlxR
         c/8yITXoXJioBIHCSfxCjLUQXPUhb6Obo5H9xA/EvSDAccsLL5sT0SCi1RTNWq+sc9Qm
         ICbOXduYMWFvAn/SQM4mIcHA3Umh2CBozVCrOPTzYDDooSIo49PCJuZ0WrgVVFj63oEf
         v7m5zQaQI6MGZEW4HQJUBYSF/wOUESMlqcKVqIuYhJeawz3mSpyePBb7yiTkbxFKyQhx
         NMKFaMRRa9x1aBQTMeaGQoSXOYIvQUeTUhho5xAQtaUKfP9kSf/CtsqBE7WNTBOm/7k6
         Indg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532EWCc1Oav3C7ASASjyK7ODkpV+Yzyisyg3CAZmSrzxIOWSUPWL
	o9kSuhTdFbmk27hFtzFG9WA=
X-Google-Smtp-Source: ABdhPJwoxhH2nA3wg/kpLclNHtutwpmV3w8hBMX6WEZGm9Ygsz3MGVJxp7yDNdiu7RqG2dRMYdY3KA==
X-Received: by 2002:a5d:9506:: with SMTP id d6mr18829793iom.37.1614707673385;
        Tue, 02 Mar 2021 09:54:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9f06:: with SMTP id q6ls3493812iot.1.gmail; Tue, 02 Mar
 2021 09:54:33 -0800 (PST)
X-Received: by 2002:a5d:97c9:: with SMTP id k9mr8507677ios.45.1614707673041;
        Tue, 02 Mar 2021 09:54:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614707673; cv=none;
        d=google.com; s=arc-20160816;
        b=qrXCIan5PCKWZeWH5MKs3yXv7C18fgMHTkukY4jZjDpmU2CfMs4KUOsKGHhFhtpxWT
         hES/hyPsozMMDPK0u9PNcPHTyjjyv1+y7fO3t/ZKO/Pr9wYA1bgLMQd1+qBndZDgSdX8
         mBbECw2ZwfItvnfJEt7hXIYoMXilXTZ7AwMMGaGVm4sRSHdryevBaCRoTYY6dNG5W13H
         X9FFvaB/VP0xYHWx8V6i9uO3NMAgRw+jVVzPMxJmGEeX8NV51CHDRqXYdrROjh/gMLHD
         rJjryyfakfTDSwWtv2TPckc+lirqa2cQcIQXojJ196R5UHb5JylHeAr/t7M/b+x1OkT8
         hSMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Et+xU+di4F1x3AQ1+A9WWet/mw3rwpq1euxtEeoI89c=;
        b=R9Vb3vYADS7CCearXOn0eNLnZprAeyIvvCMy+2k1H0F2X4VhTJlZr6tOUnOKFH0BUq
         cYqSt3+3+hL6SVgs18J/3vbXcjVtah6PcMs0SifnQiAPkMLn8iGbhP9nPIvDL/qb+NI8
         xD+WWWl5FQ0EL0ZZZKNwMgfceazLcqZBWEN0o8qwFV0JRS8Pk3sHZ2UULLFpylTlgQf6
         bmdcEXx4TtlfEWyVYiQw9QelDNjvJL0FIqccrVcItYWVLL15W2EzF3dnrfukljRgrdOj
         Nlpaqc8SZa+Rqo8w+yvXLE4zIEVII0bCaaHYKakZ5hGZedZbo/2Epb1J9nUrfbci0ajb
         o8Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=R8IMffRw;
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x22d.google.com (mail-oi1-x22d.google.com. [2607:f8b0:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id v81si1134665iod.4.2021.03.02.09.54.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Mar 2021 09:54:33 -0800 (PST)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22d as permitted sender) client-ip=2607:f8b0:4864:20::22d;
Received: by mail-oi1-x22d.google.com with SMTP id d20so22843751oiw.10
        for <clang-built-linux@googlegroups.com>; Tue, 02 Mar 2021 09:54:33 -0800 (PST)
X-Received: by 2002:a05:6808:f15:: with SMTP id m21mr4022056oiw.123.1614707672757;
 Tue, 02 Mar 2021 09:54:32 -0800 (PST)
MIME-Version: 1.0
References: <20210225150119.405469-1-arnd@kernel.org>
In-Reply-To: <20210225150119.405469-1-arnd@kernel.org>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Tue, 2 Mar 2021 12:54:21 -0500
Message-ID: <CADnq5_NU3DOJShJm4jGLYgPoM2kWT83sL5GZTGp11Be+hsCcmQ@mail.gmail.com>
Subject: Re: [PATCH] drm/amd/display: Fix an uninitialized index variable
To: Arnd Bergmann <arnd@kernel.org>
Cc: Harry Wentland <harry.wentland@amd.com>, Leo Li <sunpeng.li@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Stylon Wang <stylon.wang@amd.com>, Eryk Brol <eryk.brol@amd.com>, Arnd Bergmann <arnd@arndb.de>, 
	David Airlie <airlied@linux.ie>, Rodrigo Siqueira <Rodrigo.Siqueira@amd.com>, 
	Qingqing Zhuo <qingqing.zhuo@amd.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	LKML <linux-kernel@vger.kernel.org>, amd-gfx list <amd-gfx@lists.freedesktop.org>, 
	Nathan Chancellor <nathan@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Aurabindo Pillai <aurabindo.pillai@amd.com>, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, 
	Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>, 
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: alexdeucher@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=R8IMffRw;       spf=pass
 (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::22d
 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;       dmarc=pass
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

On Thu, Feb 25, 2021 at 10:01 AM Arnd Bergmann <arnd@kernel.org> wrote:
>
> From: Arnd Bergmann <arnd@arndb.de>
>
> clang points out that the new logic uses an always-uninitialized
> array index:
>
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:9810:38: warning: variable 'i' is uninitialized when used here [-Wuninitialized]
>                         timing  = &edid->detailed_timings[i];
>                                                           ^
> drivers/gpu/drm/amd/amdgpu/../display/amdgpu_dm/amdgpu_dm.c:9720:7: note: initialize the variable 'i' to silence this warning
>
> My best guess is that the index should have been returned by the
> parse_hdmi_amd_vsdb() function that walks an array here, so do that.
>
> Fixes: f9b4f20c4777 ("drm/amd/display: Add Freesync HDMI support to DM")
> Signed-off-by: Arnd Bergmann <arnd@arndb.de>

Applied.  Thanks!

Alex


> ---
>  .../gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c    | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> index b19b93c74bae..667c0d52dbfa 100644
> --- a/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> +++ b/drivers/gpu/drm/amd/display/amdgpu_dm/amdgpu_dm.c
> @@ -9736,7 +9736,7 @@ static bool parse_edid_cea(struct amdgpu_dm_connector *aconnector,
>         return false;
>  }
>
> -static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
> +static int parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
>                 struct edid *edid, struct amdgpu_hdmi_vsdb_info *vsdb_info)
>  {
>         uint8_t *edid_ext = NULL;
> @@ -9746,7 +9746,7 @@ static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
>         /*----- drm_find_cea_extension() -----*/
>         /* No EDID or EDID extensions */
>         if (edid == NULL || edid->extensions == 0)
> -               return false;
> +               return -ENODEV;
>
>         /* Find CEA extension */
>         for (i = 0; i < edid->extensions; i++) {
> @@ -9756,14 +9756,15 @@ static bool parse_hdmi_amd_vsdb(struct amdgpu_dm_connector *aconnector,
>         }
>
>         if (i == edid->extensions)
> -               return false;
> +               return -ENODEV;
>
>         /*----- cea_db_offsets() -----*/
>         if (edid_ext[0] != CEA_EXT)
> -               return false;
> +               return -ENODEV;
>
>         valid_vsdb_found = parse_edid_cea(aconnector, edid_ext, EDID_LENGTH, vsdb_info);
> -       return valid_vsdb_found;
> +
> +       return valid_vsdb_found ? i : -ENODEV;
>  }
>
>  void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
> @@ -9781,7 +9782,6 @@ void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
>         struct amdgpu_device *adev = drm_to_adev(dev);
>         bool freesync_capable = false;
>         struct amdgpu_hdmi_vsdb_info vsdb_info = {0};
> -       bool hdmi_valid_vsdb_found = false;
>
>         if (!connector->state) {
>                 DRM_ERROR("%s - Connector has no state", __func__);
> @@ -9857,8 +9857,8 @@ void amdgpu_dm_update_freesync_caps(struct drm_connector *connector,
>                         }
>                 }
>         } else if (edid && amdgpu_dm_connector->dc_sink->sink_signal == SIGNAL_TYPE_HDMI_TYPE_A) {
> -               hdmi_valid_vsdb_found = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
> -               if (hdmi_valid_vsdb_found && vsdb_info.freesync_supported) {
> +               i = parse_hdmi_amd_vsdb(amdgpu_dm_connector, edid, &vsdb_info);
> +               if (i >= 0 && vsdb_info.freesync_supported) {
>                         timing  = &edid->detailed_timings[i];
>                         data    = &timing->data.other_data;
>
> --
> 2.29.2
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CADnq5_NU3DOJShJm4jGLYgPoM2kWT83sL5GZTGp11Be%2BhsCcmQ%40mail.gmail.com.
